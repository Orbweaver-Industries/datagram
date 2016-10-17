module Datagram
  class TCP
    class Header < BitStruct
      unsigned :src_port, 16, 'Source Port'
      unsigned :dst_port, 16, 'Destination Port'
      unsigned :seq, 32, 'Sequence Number'
      unsigned :ack, 32, 'Acknowledgement Number'
      unsigned :offset, 4, 'Data Offset'
      unsigned :reserved, 3, 'Reserved Bits'
      unsigned :f_ns, 1, 'ECN-nonce concealment protection flag'
      unsigned :f_cwr, 1, 'Congestion Window Reduced flag'
      unsigned :f_ece, 1, 'ECN-Echo has a dual role flag'
      unsigned :f_urg, 1, 'Urgent flag'
      unsigned :f_ack, 1, 'Acknowlegement flag'
      unsigned :f_psh, 1, 'Push flag'
      unsigned :f_rst, 1, 'Reset flag'
      unsigned :f_syn, 1, 'Synchronize flag'
      unsigned :f_fin, 1, 'Finish flag'
      unsigned :w_size, 16, 'Window size'
      unsigned :checksum, 16, 'Header checksum'
      unsigned :urg, 16, 'Urgent pointer'
      rest :options
    end
  end
end
