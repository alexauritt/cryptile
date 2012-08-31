# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cryptile/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexander Auritt"]
  gem.email         = ["alexauritt@gmail.com"]
  gem.description   = %q{For simple encryption and decryption play}
  gem.summary       = %q{goofing with cyptograms}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cryptile"
  gem.require_paths = ["lib"]
  gem.version       = Cryptile::VERSION
  
  gem.add_development_dependency "rspec"
  gem.add_dependency "rake"
  
end
