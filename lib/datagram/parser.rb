module Datagram
  class Parser < ParserBase

    autoload :Ethernet, File.join('datagram', 'parser', 'ethernet')

    def initialize(encapsulation=nil, defalut_parser=Ethernet)
      super
    end


    def parse(string=nil)
      return nil if string.blank?
      if( encapsulation )
      else
        # Assume ethernet for now
        default_parser.new.parse(string)
      end
    
    end

  end
end
