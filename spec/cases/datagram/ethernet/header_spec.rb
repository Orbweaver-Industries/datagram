describe Datagram::Ethernet::Header do

  let(:header) { described_class.new }

  context 'instantiation' do
    ETHERNET_FIELDS = [ :dst_mac,
                        :src_mac,
                        :type,
                        :vlan_tags
                      ]

    ETHERNET_FIELDS.each do |field|
      let("#{field}_field".intern) { header.field_by_name(field) }
    end


  end

end
