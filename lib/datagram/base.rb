require 'bit-struct'
module Datagram
  # Parent class for them all
  class Base < Struct.new("Datagram", :header, :payload)

    def to_s
      header.to_s + payload.to_s
    end

  end
end
