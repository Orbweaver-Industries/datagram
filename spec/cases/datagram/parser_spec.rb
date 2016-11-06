describe Datagram::Parser do

  let(:encapsulation) { nil }
  let(:parser) { described_class.new encapsulation }
  let(:ethernet_parser) { described_class.const_get :Ethernet }

  context 'nil encapsulation' do
    let(:encapsulation) { nil }

    it 'assumes ethernet' do
      expect(parser.default_parser).to eq(ethernet_parser)
    end

  end

end
