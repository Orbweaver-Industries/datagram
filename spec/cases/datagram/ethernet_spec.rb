describe Datagram::Ethernet do

  let(:datagram) { described_class.new }
  let(:header_class) { described_class.const_get :Header }

  it 'has an ethernet header' do
    expect(datagram.header).to be_a header_class
  end


  it 'has a destination mac address' do
    expect(datagram).to respond_to(:dst_mac)
  end


  it 'has a source mac address' do
    expect(datagram).to respond_to(:src_mac)
  end


  it 'has a type' do
    expect(datagram).to respond_to(:type)
  end

end
