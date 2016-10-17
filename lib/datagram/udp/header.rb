module Datagram
  class UDP
    class Header < BitStruct
      unsigned :src_port, 16, 'Source port'
      unsigned :dst_port, 16, 'Destination port'
      unsigned :len, 16,      'Length'
      unsigned :checksum, 16, 'Checksum'
    end
  end
end
