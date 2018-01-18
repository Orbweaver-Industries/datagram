module Datagram
  class Ethernet
    module Definition
      extend self

      def ethertypes
        {
          0x0800 => 'IPv4',
          0x0806 => 'ARP',
          0x8100 => '802.1Q',
          0x86DD => 'IPv6'
        }
      end

      def eight02_1q_type; 0x8100; end


      def headers
        [ dst_mac: 48,
          scr_mac: 48
        ]
      end

    end
  end
end
