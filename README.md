# DogecoinRuby

Dogecoin-Ruby is a ruby wrapper for the Dogecoin API located at http://dogechain.info.  It's only intended for simple requests like checking a wallet balance, not creating wallets or storing or transacting any dogecoin.  Dogeclaimer: I'm learning this as I go, any help is greatly appreciated, and I make no guarantees!

## Installation

Add this line to your application's Gemfile:

    gem 'dogecoin-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dogecoin-ruby

## Usage

Currently no API key is needed for the dogechain.info API.

To get started, create the Dogecoin client:

  @doge = DogecoinRuby::Client.new

The following actions are available:

  @doge.address_balance(address)
  
Get the amount ever received minus amount ever sent by a given address.

  @doge.address_to_hash(address)
  
Shows the public key hash encoded in an address.

  @doge.check_address(address)
  
Checks an address for validity.

  @doge.decode_address(address)
  
Shows the version prefix and hash encoded in an address.

  @doge.get_block_count
  
Shows the current block number.

  @doge.get_difficulty
  
Shows the last solved block's difficulty.

  @doge.get_received_by_address(address)
  
Shows the amount ever received by a given address.

  @doge.get_sent_by_address(address)
  
Shows the amount ever sent from a given address.

  @doge.hash_to_address(hash)
  
Shows the address of the given hash.

  @doge.net_hash
  
Shows statistics about difficulty and network power.

  @doge.total_bc
  
Shows the amount of currency ever mined.

  @doge.transactions
  
Shows the amount transactions of the last blocks.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
