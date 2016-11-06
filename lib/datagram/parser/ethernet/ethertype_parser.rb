module Datagram
  class Parser
    class Ethernet
      class EthertypeParser < BitStruct
        FAFF_LENGTH = 96

        # TODO factor this out
        EIGHT02_1Q_TYPE = 0x8100
        ETHERTYPES = {
          0x0800 => 'IPv4',
          0x0806 => 'ARP',
          EIGHT02_1Q_TYPE => '802.1Q',
          0x86DD => 'IPv6'
        }

        def self.eight02_1q_type; EIGHT02_1Q_TYPE; end
        def self.ethertypes; ETHERTYPES; end
        def self.faff_length; FAFF_LENGTH; end

        # TODO roll this up to Datagram::Parser::Ethernet
        unsigned :faff, FAFF_LENGTH, "DST & SRC MAC addresses"
        unsigned :ethertype_1, 16,   "No 802.1Q Tagging Ethertype"
        unsigned :eight02_1, 16,     "802.1Q TPID"
        unsigned :ethertype_2, 16,   "802.1Q ethertype"
        unsigned :eight02_2, 16,     "Double-tagged 802.1Q TPID"
        unsigned :ethertype_3, 16,   "Double-tagged 802.1Q ethertype"


        def ethertype
          i = vlan_tag_count
          return i.nil? ? nil : possible_ethertypes[i]
        end


        def vlan_tag_count
          possible_ethertypes.index { |e| actual_ethertype?(e) }
        end


      private

        def actual_ethertype?(e)
          known_ethertype?(e) && e != self.class.eight02_1q_type
        end


        def known_ethertype?(e)
          self.class.ethertypes.keys.include?(e)
        end


        def possible_ethertypes
          [ ethertype_1, ethertype_2, ethertype_3 ]
        end

      end
    end
  end
end
