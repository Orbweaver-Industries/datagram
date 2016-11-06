describe Datagram::ParserBase do

  let(:encapsulation) { nil }
  let(:parser) { described_class.new encapsulation }

  it 'has a parse method' do
    expect(parser).to respond_to :parse
  end


  it 'has a :default_parser getter' do
    expect(parser).to respond_to(:default_parser)
  end


  it 'has a private :default_parser setter' do
    expect(parser.private_methods).to include(:default_parser=)
  end


  it 'has a private :encapsulation getter' do
    expect(parser.private_methods).to include(:encapsulation)
  end


  it 'has a private :encapsulation setter' do
    expect(parser.private_methods).to include(:encapsulation=)
  end


  it 'expects subclasses to implement #parse' do
    expect { parser.parse }.to raise_error(NotImplementedError)
  end

end
