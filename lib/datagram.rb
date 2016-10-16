require "datagram/version"
module Datagram

  autoload :Base,     File.join('datagram','base')
  autoload :Ethernet, File.join('datagram','ethernet')
  autoload :IPv4,     File.join('datagram','ipv4')

end
