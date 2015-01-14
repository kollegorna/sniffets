# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wwsnippets/version'

Gem::Specification.new do |spec|
  spec.name          = "wwsnippets"
  spec.version       = Wwsnippets::VERSION
  spec.authors       = ["Ivan Novosad"]
  spec.email         = ["ivan.novosad@gmail.com"]
  spec.summary       = %q{Snippets for Wizard Wars}
  #spec.description   = %q{Snippets for Wizard Wars}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', '~> 4.1.5', '~> 4.1.5'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
