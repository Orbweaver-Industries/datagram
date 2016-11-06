module Datagram
  class IPv4 < DatagramBase
    autoload :Header, File.join('datagram','ipv4','header')
    extend Forwardable
    def_delegators :@header, :dst_ip, :src_ip

  end
end
