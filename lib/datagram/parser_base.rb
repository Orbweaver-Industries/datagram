module Datagram
  class ParserBase

    attr_reader :default_parser

    def initialize(e=nil, d=nil)
      self.encapsulation = e
      self.default_parser = d
    end


    def parse(string=nil)
      raise NotImplementedError
    end

  private

    attr_accessor :encapsulation
    attr_writer :default_parser

  end
end
