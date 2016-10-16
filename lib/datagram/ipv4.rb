require 'ipaddr'
module Datagram
  class IPv4 < Base
    autoload :Header, File.join('datagram','ipv4','header')

    def initialize(args=nil)
      super
      self.header = Header.new(header)
    end

  end
end
