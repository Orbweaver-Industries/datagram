describe Datagram::Parser::Ethernet do

  let(:parser) { described_class.new }
  let(:string) { "\x01\x80\xC2\x00\x00\x00\x00\x0EX%\xEC:\x00&BB\x03\x00\x00\x00\x00\x00\x90\x00\x00\x0EX%\xEC:\x00\x00\x00\x00\x90\x00\x00\x0EX%\xEC:\x80\x01\x00\x00\x06\x00\x01\x00\x04\x00\xA5\xA5\xA5\xA5\xA5\xA5\xA5\xA5" }

  it 'blark' do
    parser.parse string
  end

end
