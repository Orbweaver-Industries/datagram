describe Datagrams do

    it 'responds to :version' do
    expect(Datagrams).to respond_to :version
  end


  it "has a version string" do
    expect(Datagrams::VERSION).to be_a String
  end


  it "has a version number" do
    expect(Datagrams::VERSION).not_to be nil
  end

end
