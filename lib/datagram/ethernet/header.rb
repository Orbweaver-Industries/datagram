module Datagram
  class Ethernet
    class Header < BitStruct
      hex_octets :dst_mac, 48
      hex_octets :src_mac, 48
      unsigned :type, 16
    end
  end
end
