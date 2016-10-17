describe Datagram::ARP::Header do

  let(:header) { described_class.new }

  context 'instantiation' do
    FIELDS = [ :hlen,
               :htype,
               :oper,
               :plen,
               :ptype,
               :sha,
               :spa,
               :tha,
               :tpa
             ]

    FIELDS.each do |field|
      let("#{field}_field".intern) { header.field_by_name(field) }
    end

    it 'hardware type' do
      expect(htype_field.offset).to eq 0
      expect(htype_field.length).to eq 16
    end


    it 'protocol type' do
      expect(ptype_field.offset).to eq 16
      expect(ptype_field.length).to eq 16
    end


    it 'hardware address length' do
      expect(hlen_field.offset).to eq 32
      expect(hlen_field.length).to eq 8
    end


    it 'protocol address length' do
      expect(plen_field.offset).to eq 40
      expect(plen_field.length).to eq 8
    end


    it 'operation code' do
      expect(oper_field.offset).to eq 48
      expect(oper_field.length).to eq 16
    end


    it 'sender hardware address' do
      expect(sha_field.offset).to eq 64
      expect(sha_field.length).to eq 48
    end


    it 'sender protocol address' do
      expect(spa_field.offset).to eq 112
      expect(spa_field.length).to eq 32
    end


    it 'target hardware address' do
      expect(tha_field.offset).to eq 144
      expect(tha_field.length).to eq 48
    end


    it 'target protocol address' do
      expect(tpa_field.offset).to eq 192
      expect(tpa_field.length).to eq 32
    end


    it 'is the right length' do
      expect(described_class.bit_length).to eq 224
    end

  end

end
