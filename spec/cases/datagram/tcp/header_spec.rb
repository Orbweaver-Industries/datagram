describe Datagram::TCP::Header do

  let(:header) { described_class.new }

  context 'instantiation' do
    TCP_FIELDS = [ :ack,
                   :checksum,
                   :dst_port,
                   :f_ack,
                   :f_ece,
                   :f_cwr,
                   :f_fin,
                   :f_ns,
                   :f_psh,
                   :f_rst,
                   :f_syn,
                   :f_urg,
                   :offset,
                   :reserved,
                   :seq,
                   :src_port,
                   :urg,
                   :w_size
                 ]

    TCP_FIELDS.each do |field|
      let("#{field}_field".intern) { header.field_by_name(field) }
    end

    it 'is the right length' do
      expect(described_class.bit_length).to eq 160
    end


    it 'source port' do
      expect(src_port_field.offset).to eq 0
      expect(src_port_field.size).to eq 16
    end


    it 'destination port' do
      expect(dst_port_field.offset).to eq 16
      expect(dst_port_field.size).to eq 16
    end


    it 'sequence number' do
      expect(seq_field.offset).to eq 32
      expect(seq_field.size).to eq 32
    end


    it 'acknowledgement number' do
      expect(ack_field.offset).to eq 64
      expect(ack_field.size).to eq 32
    end


    it 'data offset' do
      expect(offset_field.offset).to eq 96
      expect(offset_field.size).to eq 4
    end


    it 'reserved bits' do
      expect(reserved_field.offset).to eq 100
      expect(reserved_field.size).to eq 3
    end


    it 'ns flag' do
      expect(f_ns_field.offset).to eq 103
      expect(f_ns_field.size).to eq 1
    end


    it 'CWR flag' do
      expect(f_cwr_field.offset).to eq 104
      expect(f_cwr_field.size).to eq 1
    end


    it 'ECE flag' do
      expect(f_ece_field.offset).to eq 105
      expect(f_ece_field.size).to eq 1
    end


    it 'URG flag' do
      expect(f_urg_field.offset).to eq 106
      expect(f_urg_field.size).to eq 1
    end


    it 'ACK flag' do
      expect(f_ack_field.offset).to eq 107
      expect(f_ack_field.size).to eq 1
    end


    it 'PSH flag' do
      expect(f_psh_field.offset).to eq 108
      expect(f_psh_field.size).to eq 1
    end


    it 'RST flag' do
      expect(f_rst_field.offset).to eq 109
      expect(f_rst_field.size).to eq 1
    end


    it 'SYN flag' do
      expect(f_syn_field.offset).to eq 110
      expect(f_syn_field.size).to eq 1
    end


    it 'FIN flag' do
      expect(f_fin_field.offset).to eq 111
      expect(f_fin_field.size).to eq 1
    end


    it 'Window size' do
      expect(w_size_field.offset).to eq 112
      expect(w_size_field.size).to eq 16
    end


    it 'Checksum' do
      expect(checksum_field.offset).to eq 128
      expect(checksum_field.size).to eq 16
    end


    it 'Urgent pointer' do
      expect(urg_field.offset).to eq 144
      expect(urg_field.size).to eq 16
    end

  end

end
