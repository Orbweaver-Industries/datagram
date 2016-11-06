require "datagram/version"

autoload :BitStruct, 'bit-struct'

module Datagram

  autoload :ARP,          File.join('datagram','arp')
  autoload :DatagramBase, File.join('datagram','datagram_base')
  autoload :Ethernet,     File.join('datagram','ethernet')
  autoload :IPv4,         File.join('datagram','ipv4')
  autoload :Parser,       File.join('datagram','parser')
  autoload :ParserBase,   File.join('datagram','parser_base')
  autoload :TCP,          File.join('datagram','tcp')
  autoload :UDP,          File.join('datagram','udp')

end
