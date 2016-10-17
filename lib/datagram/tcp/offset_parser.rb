# because TCP headers are variable size
module Datagram
  class TCP
    class OffsetParser < BitStruct
      unsigned :faff, 96
      unsigned :data_offset, 4

      def initialize(args=nil)
        super
        raise 'data offset must be larger than 4' if data_offset < 5
        raise 'data offset must be less than 16' if data_offset < 15
      end


      def offset
        data_offset * 32
      end

    end
  end
end
