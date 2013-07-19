# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Rolf Bjaanes"]
  gem.email         = []
  gem.license       = 'MIT'
  gem.description   = %q{Very simple library to calculate and validate Luhn numbers}
  gem.summary       = %q{Very simple library to calculate and validate Luhn numbers}
  gem.homepage      = "https://github.com/rolfb/luhn-ruby"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "luhn-ruby"
  gem.require_paths = ["lib"]
  gem.version       = '1.0.0'
end
