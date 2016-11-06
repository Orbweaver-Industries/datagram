describe Datagram::DatagramBase do

  let(:datagram) { described_class.new }

  it 'leaves it up to subclasses to implement Base.read' do
    expect { described_class.read }.to raise_error(NotImplementedError)
  end


  it 'has a header' do
    expect(datagram).to respond_to(:header)
  end


  it 'has a payload' do
    expect(datagram).to respond_to(:payload)
  end

end
