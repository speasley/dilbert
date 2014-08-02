# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dilbert/version'

Gem::Specification.new do |spec|
  spec.name          = "dilbert"
  spec.version       = Dilbert::VERSION
  spec.authors       = ["Stephen Peasley"]
  spec.email         = ["s@stephenpeasley.com"]
  spec.description   = %q{Retrieve today's Dilbert comic strip from dilbert.com'}
  spec.summary       = %q{Your dose of daily Dilbert}
  spec.homepage      = "https://github.com/speasley/dilbert"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
