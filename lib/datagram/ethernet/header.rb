module Datagram
  class Ethernet
    class Header < BitStruct
      hex_octets :dst_mac, 48, 'Destination MAC Address'
      hex_octets :src_mac, 48, 'Source MAC Address'
      unsigned :type, 16, 'Ethernet type'
    end
  end
end
