describe Datagram::IPv4::Header do

  let(:header) { described_class.new }

  context 'instantiation' do
    IPv4_FIELDS = [ :checksum,
                    :dscp,
                    :dst_ip,
                    :ecn,
                    :flags,
                    :foffset,
                    :id,
                    :ihl,
                    :len,
                    :protocol,
                    :src_ip,
                    :ttl,
                    :version
                  ]

    IPv4_FIELDS.each do |field|
      let("#{field}_field".intern) { header.field_by_name(field) }
    end

    it 'version' do
      expect(version_field.offset).to eq(0)
      expect(version_field.length).to eq(4)
    end


    it 'length' do
      expect(ihl_field.offset).to eq(4)
      expect(ihl_field.length).to eq(4)
    end


    it 'differentiated services code point' do
      expect(dscp_field.offset).to eq(8)
      expect(dscp_field.length).to eq(6)
    end


    it 'explicit congestion notification' do
      expect(ecn_field.offset).to eq(14)
      expect(ecn_field.length).to eq(2)
    end


    it 'length' do
      expect(len_field.offset).to eq(16)
      expect(len_field.length).to eq(16)
    end


    it 'id' do
      expect(id_field.offset).to eq(32)
      expect(id_field.length).to eq(16)
    end


    it 'flags' do
      expect(flags_field.offset).to eq(48)
      expect(flags_field.length).to eq(3)
    end


    it 'fragment offset' do
      expect(foffset_field.offset).to eq(51)
      expect(foffset_field.length).to eq(13)
    end


    it 'time to live' do
      expect(ttl_field.offset).to eq(64)
      expect(ttl_field.length).to eq(8)
    end


    it 'protocol' do
      expect(protocol_field.offset).to eq(72)
      expect(protocol_field.length).to eq(8)
    end


    it 'checksum' do
      expect(checksum_field.offset).to eq(80)
      expect(checksum_field.length).to eq(16)
    end


    it 'source ip' do
      expect(src_ip_field.offset).to eq(96)
      expect(src_ip_field.length).to eq(32)
    end


    it 'destination ip' do
      expect(dst_ip_field.offset).to eq(128)
      expect(dst_ip_field.length).to eq(32)
    end


    it 'is the right length' do
      expect(described_class.bit_length).to eq(160)
    end

  end

end
