module Datagram
  class TCP < Base
    autoload :Header, File.join('datagram', 'tcp', 'header')
    autoload :OffsetParser, File.join('datagram', 'tcp', 'offset_parser')

    def self.read(string=nil)
      read_parts string, OffsetParser.new(string).offset
    end

  end
end
