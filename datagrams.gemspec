# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datagrams/version'

Gem::Specification.new do |spec|
  spec.name          = "datagrams"
  spec.version       = Datagrams::VERSION
  spec.authors       = ["Dean Brundage"]
  spec.email         = ["github@deanandadie.net"]

  spec.summary       = %q{YA packet library}
  spec.description   = %q{Yet another ruby packet library}
  spec.homepage      = 'https://github.com/Orbweaver-Industries/datagrams'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

end
