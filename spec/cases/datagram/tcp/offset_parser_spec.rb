describe Datagram::TCP::OffsetParser do

  let(:offset_int) { 5 }
  let(:offset_str) { ("%x" % offset_int.to_s(2).rjust(4,'0').ljust(8,'0').to_i(2)).hex.chr }
  let(:faff) { 0.chr * (described_class.faff_length / 8) }
  let(:parser) { described_class.new string }
  let(:string) { faff + offset_str }

  it 'has a faff_length method' do
    expect( described_class ).to respond_to :faff_length
  end


  it 'faff_length returns an integer' do
    expect( described_class.faff_length ).to be_a Fixnum
  end


  it 'finds the header size' do
    expect( parser.data_offset ).to eq offset_int
  end
  
end
