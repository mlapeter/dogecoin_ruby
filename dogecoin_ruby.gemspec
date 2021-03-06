# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogecoin_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "dogecoin_ruby"
  spec.version       = DogecoinRuby::VERSION
  spec.authors       = ["mlapeter"]
  spec.email         = ["mlapeter@gmail.com"]
  spec.description   = %q{Ruby wrapper for the Dogecoin API located at http://dogechain.info}
  spec.summary       = %q{Ruby wrapper for the Dogecoin API located at http://dogechain.info}
  spec.homepage      = ""
  spec.license       = "MIT"  
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  
end
