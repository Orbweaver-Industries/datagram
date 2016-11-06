describe Datagram::UDP::Header do

  let(:header) { described_class.new }

  context 'instantiation' do
    UDP_FIELDS = [ :checksum,
                   :dst_port,
                   :len,
                   :src_port
                 ]

    UDP_FIELDS.each do |field|
      let("#{field}_field".intern) { header.field_by_name(field) }
    end

    it 'source port' do
      expect(src_port_field.offset).to eq 0
      expect(src_port_field.length).to eq 16
    end


    it 'destination port' do
      expect(dst_port_field.offset).to eq 16
      expect(dst_port_field.length).to eq 16
    end


    it 'length' do
      expect(len_field.offset).to eq 32
      expect(len_field.length).to eq 16
    end


    it 'checksum' do
      expect(checksum_field.offset).to eq 48
      expect(checksum_field.length).to eq 16
    end


    it 'is the right length' do
      expect(described_class.bit_length).to eq 64
    end

  end

end
