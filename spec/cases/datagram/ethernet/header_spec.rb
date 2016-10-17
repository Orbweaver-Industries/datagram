describe Datagram::Ethernet::Header do

  let(:header) { described_class.new }

  context 'instantiation' do
    FIELDS = [ :dst_mac,
               :src_mac,
               :type,
             ]

    FIELDS.each do |field|
      let("#{field}_field".intern) { header.field_by_name(field) }
    end

    it 'destination mac address' do
      expect(dst_mac_field.offset).to eq(0)
      expect(dst_mac_field.length).to eq(48)
    end


    it 'source mac address' do
      expect(src_mac_field.offset).to eq(48)
      expect(src_mac_field.length).to eq(48)
    end


    it 'ether type' do
      expect(type_field.offset).to eq(96)
      expect(type_field.length).to eq(16)
    end


    it 'is the right length' do
      expect(described_class.bit_length).to eq(112)
    end

  end

end
