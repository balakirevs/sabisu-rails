# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sabisu_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "sabisu_rails"
  spec.version       = SabisuRails::VERSION.dup
  spec.authors       = ["Abraham Kuri"]
  spec.email         = ["kurenn@icalialabs.com"]
  spec.summary       = %q{Smart API Explorer}
  spec.description   = %q{A smart api explorer for a rails app}
  spec.homepage      = "https://github.com/IcaliaLabs/sabisu-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.rubyforge_project = "sabisu_rails"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "debugger", "~> 1.6"

  spec.add_dependency "activemodel", '~> 5.1.2'
  spec.add_dependency "actionpack", '~> 5.1.2'
  spec.add_dependency "httparty", "~> 0.13"
end
