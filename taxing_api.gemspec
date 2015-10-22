# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taxing_api/version'

Gem::Specification.new do |spec|
  spec.name          = "taxing_api"
  spec.version       = TaxingApi::VERSION
  spec.authors       = ["Finbarr Taylor"]
  spec.email         = ["finbarrtaylor@gmail.com"]

  spec.summary       = %q{Extremely simple tax rate server.}
  spec.description   = %q{Rack app that will serve tax rate requests.}
  spec.homepage      = "https://github.com/finbarr/taxing_api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "taxing", "~> 0.1"
end
