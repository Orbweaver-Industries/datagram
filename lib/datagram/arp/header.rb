module Datagram
  class ARP
    class Header < BitStruct
      unsigned :htype, 16, 'Hardware Type'
      unsigned :ptype, 16, 'Protocol Type'
      unsigned :hlen, 8, 'Hardware address length'
      unsigned :plen, 8, 'Protocol length'
      unsigned :oper, 16, 'Operation code'
      unsigned :sha, 48, 'Sender Hardware Address'
      unsigned :spa, 32, 'Sender Protocol Address'
      unsigned :tha, 48, 'Target Hardware Address'
      unsigned :tpa, 32, 'Target Protocol Address'
    end
  end
end
