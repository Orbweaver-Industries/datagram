module Datagram
  class Ethernet
    class EthertypeParser < BitStruct
      FAFF_LENGTH = 64

      def self.faff_length; FAFF_LENGTH; end

      unsigned :faff, FAFF_LENGTH, "DST & SRC MAC addresses"
      unsigned :ethertype, 16, "Ethertype / payload length"

    end
  end
end
