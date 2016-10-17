describe Datagram::Ethernet do

  let(:datagram) { described_class.new }

  it 'has an ethernet header' do
    expect(datagram.header).to be_a(Datagram::Ethernet::Header)
  end


  it 'has a destination mac address' do
    expect(datagram).to respond_to(:dst_mac)
  end


  it 'has a source mac address' do
    expect(datagram).to respond_to(:src_mac)
  end

end
