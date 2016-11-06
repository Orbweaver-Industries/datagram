module Datagram
  class Ethernet
    class Header < Struct.new(:dst_mac, :src_mac, :type, :vlan_tags)

      def initialize(dst_mac, src_mac, type, vlan_types=[])
        super
      end

    end
  end
end
