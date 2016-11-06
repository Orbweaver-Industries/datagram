module Datagram
  # Parent class for them all
  class DatagramBase < Struct.new(:header, :payload, :args)

    class << self

      def read(string=nil)
        raise NotImplementedError
      end

    private

      def read_parts(string=nil, header_bytes)
	payload_bytes = string.length - header_bytes
        new( string.byteslice(0,header_bytes), string.byteslice(header_bytes,payload_bytes) )
      end

    end


    def initialize(header=nil, payload=nil, args={})
      super

      if( self.class.const_defined?(:Header) )
        c = self.class.const_get(:Header)
        self.header = c.new(self.header)
      end

      if( self.class.const_defined?(:Payload) )
        c = self.class.const_get(:Payload)
        self.payload = c.new(self, self.payload, args[:payload_parser])
      end

    end


    def to_s
      header.to_s + payload.to_s
    end

  end
end
