module Datagram
  class UDP < DatagramBase
    autoload :Header, File.join('datagram', 'udp', 'header')

    def self.read(string=nil)
      read_parts string, 8
    end

  end
end
