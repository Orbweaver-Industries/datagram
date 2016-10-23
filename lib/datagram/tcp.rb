module Datagram
  class TCP < Base
    # "\x84\x20\x01\xbb\x43\x31\x52\x85\x80\x9c\x7e\x25\x80\x18\x07\x28\xa5\x0c\x00\x00\x01\x01\x08\x0a\x59\xe8\xf8\x11\x56\x42\x36\x25"
    autoload :Header, File.join('datagram', 'tcp', 'header')
    autoload :OffsetParser, File.join('datagram', 'tcp', 'offset_parser')

    def self.read(string=nil)
      read_parts string, OffsetParser.new(string).offset
    end

  end
end
