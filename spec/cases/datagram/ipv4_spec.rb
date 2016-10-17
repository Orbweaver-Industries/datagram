describe Datagram::IPv4 do

  let(:datagram) { described_class.new data }
  let(:data) { }


  it 'has a destination address' do
    expect(datagram).to respond_to(:dst_ip)
  end


  it 'has a source address' do
    expect(datagram).to respond_to(:src_ip)
  end

end
