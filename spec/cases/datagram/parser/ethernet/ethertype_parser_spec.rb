def hex_to_str(hex)
  hex.to_s(2).rjust(16,'0').scan(/......../).collect { |b| b.to_i(2).chr }.join
end
  
describe Datagram::Parser::Ethernet::EthertypeParser do

  let(:ethertype) { hex_to_str(ethertype_hex) }
  let(:ethertype_hex) { 0x86DD }
  let(:faff) { 0.chr * (described_class.faff_length / 8) }
  let(:parser) { described_class.new string }
  let(:string) { faff + ethertype }
  let(:vlan_tag) { vlan_type + 0.chr * 2 }
  let(:vlan_type) { hex_to_str(described_class.eight02_1q_type) }
  let(:unknown_type) { 0x0000 }


  shared_examples_for 'an unknown ethertype' do
    let(:ethertype_hex) { unknown_type }
    it 'ethertype returns nil' do
      expect(parser.ethertype).to be_nil
    end
  end


  shared_examples_for 'a known ethertype' do
    it 'gives you the ethertype' do
      expect(parser.ethertype).to eq ethertype_hex
    end
  end


  it 'has a faff_length method' do
    expect(described_class).to respond_to :faff_length
  end


  it 'faff_length returns a number' do
    expect(described_class.faff_length).to be_a Fixnum
  end


  context 'No VLAN tagging' do
    it_behaves_like 'a known ethertype'
    it_behaves_like 'an unknown ethertype'
  end


  context 'Single VLAN tagging' do
    let(:string) { faff + vlan_tag + ethertype }
    it_behaves_like 'a known ethertype'
    it_behaves_like 'an unknown ethertype'
  end


  context 'Double VLAN tagging' do
    let(:string) { faff + vlan_tag + vlan_tag + ethertype }
    it_behaves_like 'a known ethertype'
    it_behaves_like 'an unknown ethertype'
  end

end
