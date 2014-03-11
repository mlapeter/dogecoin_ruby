module DogecoinRuby
  class Client
    
    
    def initialize
    end
    
    def parse_url(path, address=nil)
      body = open("http://dogechain.info/chain/Dogecoin/q/#{path}/#{address}").read
    end
    
    def address_balance(address)
      parse_url("addressbalance", address).to_i
    end
    
    def address_to_hash(address)
      parse_url("addresstohash", address)
    end
    
    def check_address(address)
      result = parse_url("checkaddress", address)
      if result == "X5" || result == "SZ" || result == "CK" || result == "BBE"
        false
      else
        true
      end
    end
    
    def decode_address(address)
      parse_url("decode_address", address)
    end
    
    def get_block_count
      parse_url("getblockcount").to_i
    end
    
    def get_difficulty
      parse_url("getdifficulty").to_i
    end
    
    def get_received_by_address(address)
      parse_url("getreceivedbyaddress", address).to_i
    end
    
    def get_sent_by_address(address)
      parse_url("getsentbyaddress", address).to_i
    end
    
    def hash_to_address(hash)
      parse_url("hashtoaddress", hash)
    end
    
    def net_hash
      body = open("http://dogechain.info/chain/Dogecoin/q/nethash?format=json").read
      JSON.parse(body)
    end
    
    def total_bc
      parse_url("totalbc").to_i
    end
    
    def transactions
      parse_url("transactions")
    end
  end
end