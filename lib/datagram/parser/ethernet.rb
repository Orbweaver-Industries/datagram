module Datagram
  class Parser
    class Ethernet < ParserBase

      autoload :EthertypeParser, File.join('datagram', 'parser', 'ethernet', 'ethertype_parser')

      def initialize(e=nil, d=nil)
        super
        self.ethertype_parser = EthertypeParser
      end


      def parse(string)
        type = ethertype_parser.new(string).ethertype
      end

    private

      attr_accessor :ethertype_parser

    end
  end
end
