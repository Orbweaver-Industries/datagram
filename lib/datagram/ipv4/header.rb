require 'ipaddr'
module Datagram
  class IPv4
    class Header < BitStruct
      unsigned :version, 4,    'Version', { default: 4 }
      unsigned :ihl, 4,        'Length', { default: 5 }
      unsigned :dscp, 6,       "Differentiated Services Code Point"
      unsigned :ecn, 2,        "Explicit Congestion Notification"
      unsigned :len, 16,       "Length"
      unsigned :id, 16,        "Identifier"
      unsigned :flags, 3,      "Flags [reserved, don't fragment, more fragments]"
      unsigned :foffset, 13,   "Fragment offset"
      unsigned :ttl, 8,        "Time to live"
      unsigned :protocol, 8,   "Protocol"
      unsigned :checksum, 16,  "Checksum"
      octets :src_ip, 32,      "Source address integer"
      octets :dst_ip, 32,      "Destination address integer"
#      unsigned :opt_copied, 1, "Copied option"
#      unsigned :opt_class, 2,  "Class option"
#      unsigned :opt_num, 5,    "Number option"
#      unsigned :opt_len, 8,    "Option length"
#      rest :opt_data,          "Option-specific data"

    private

#      def compute_checksum
#        a = to_16bit_words.pack("nnnnnnNN")
#
#        checksum = 0
#        format = "S#{a.length / 2}#{a.length % 2 == 1 ? 'C' : ''}"
#        a.unpack(format).each { |r| checksum += r }
#        checksum = (checksum >> 16) + (checksum & 0xffff)
#        checksum = ~((checksum >> 16) + checksum) & 0xffff
#        ([checksum].pack("S*")).unpack("n*")[0]
#      end
#
#
#      def to_16bit_words
#        a = [ ( ( (version << 4) | ihl ) << 8 | tos ) ]
#        a << len
#        a << id
#        a << ( (flags << 13) | foffset  )
#        a << ( (ttl << 8) | protocol )
#        a << checksum
#        a << IPAddr.new(src_ip).to_i
#        a << IPAddr.new(dst_ip).to_i
#      end
#
    end
  end
end
