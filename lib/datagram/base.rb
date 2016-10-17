module Datagram
  # Parent class for them all
  class Base < Struct.new(:header, :payload)

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


    def initialize(header=nil, payload=nil)
      super

      if( self.class.const_defined?(:Header) )
        c = self.class.const_get(:Header)
        self.header = c.new(self.header)
      end

      if( self.class.const_defined?(:Payload) )
        c = self.class.const_get(:Payload)
        self.payload = c.new(self.payload)
      end

    end


    def to_s
      header.to_s + payload.to_s
    end

  end
end
