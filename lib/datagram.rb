require "datagram/version"
require 'bit-struct'
module Datagram

  autoload :ARP,     File.join('datagram','arp')
  autoload :Base,     File.join('datagram','base')
  autoload :Ethernet, File.join('datagram','ethernet')
  autoload :IPv4,     File.join('datagram','ipv4')
  autoload :TCP,      File.join('datagram','tcp')
  autoload :UDP,      File.join('datagram','udp')

end
