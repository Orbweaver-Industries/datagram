describe Datagram::Ethernet do

  let(:subject) { described_class.new }

  it 'has a destination mac address' do
    expect(subject).to respond_to(:dst_mac)
  end


  it 'has a source mac address' do
    expect(subject).to respond_to(:src_mac)
  end


  it 'has a ethernet type' do
    expect(subject).to respond_to(:type)
  end


  it 'has a payload' do
    expect(subject).to respond_to(:payload)
  end

end
