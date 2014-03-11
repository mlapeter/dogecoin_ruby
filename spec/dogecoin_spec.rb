require "spec_helper"

describe DogecoinRuby do
 before(:all) do
    @doge = DogecoinRuby::Client.new
    @address = "DNfFHTUZ4kkXPnoYUvgt6BGVwonEFB1b2i"
  end
  
  it "returns the address balance" do
    @doge.address_balance(@address).should > 1
  end
  
  it "returns the public key hash of the address" do
    @doge.address_to_hash(@address).should == "C02DEABEEB7EE1B9567CA7FD08D519091589CA6F"
  end
  
  it "should check the address for validity" do
    @doge.check_address(@address).should == true
  end
  
  it "should decode the address" do
    @doge.decode_address(@address).should == "1e:C02DEABEEB7EE1B9567CA7FD08D519091589CA6F"
  end
  
  it "should return block count" do
    @doge.get_block_count.should > 136287
  end
  
  it "should return the current difficulty" do
    @doge.get_difficulty.should > 876
  end
  
  it "should return the amount ever received by the address" do
    @doge.get_received_by_address(@address).should > 16312521
  end
  
  it "should return the amount ever sent by the address" do
    @doge.get_sent_by_address(@address).should == 0
  end
  
  it "should return the address of the hash" do
    hash = "C02DEABEEB7EE1B9567CA7FD08D519091589CA6F"
    @doge.hash_to_address(hash).should == "DNfFHTUZ4kkXPnoYUvgt6BGVwonEFB1b2i"
  end
  
  it "should return statistics about difficulty and network power" do
    @doge.net_hash.length.should > 1
  end
  
  it "should return the total amount of currency ever mined" do
    @doge.total_bc.should > 59017694014
  end
  
  it "should return all the transaction amounts from the last block" do
    @doge.transactions.length.should > 1    
  end
end