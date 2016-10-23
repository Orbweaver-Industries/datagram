# because TCP headers are variable size
module Datagram
  class TCP
    class OffsetParser < BitStruct
      FAFF_LENGTH = 96
      def self.faff_length; FAFF_LENGTH; end

      unsigned :faff, FAFF_LENGTH
      unsigned :data_offset, 4

      def offset
        data_offset * 32
      end

    end
  end
end
