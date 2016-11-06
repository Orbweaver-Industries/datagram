module Datagram
  class ARP < DatagramBase
    autoload :Header, File.join('datagram', 'arp', 'header')

    def self.read(string=nil)
      read_parts string, 28
    end

  end
end
