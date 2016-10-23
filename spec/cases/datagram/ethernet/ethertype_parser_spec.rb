describe Datagram::Ethernet::EthertypeParser do

  let(:ethertype) { ethertype_hex.to_s(2).rjust(16,'0').scan(/......../).collect { |b| b.to_i(2).chr }.join }
  let(:ethertype_hex) { 0x8819 }
  let(:faff) { 0.chr * (described_class.faff_length / 8) }
  let(:parser) { described_class.new string }
  let(:string) { faff + ethertype }


  it 'has a faff_length method' do
    expect(described_class).to respond_to :faff_length
  end


  it 'faff_length returns a number' do
    expect(described_class.faff_length).to be_a Fixnum
  end


  it 'gives you the ethertype' do
    expect(parser.ethertype).to eq ethertype_hex
  end

end
