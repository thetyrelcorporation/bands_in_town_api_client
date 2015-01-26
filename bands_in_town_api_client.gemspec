# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bands_in_town_api_client/version'

Gem::Specification.new do |spec|
  spec.name          = "bands_in_town_api_client"
  spec.version       = BandsInTownApiClient::VERSION
  spec.authors       = ["thetyrelcorporation"]
  spec.email         = ["tyrel@thetyrelcorporation.com"]
	spec.homepage   	 = "https://github.com/thetyrelcorporation/bands_in_town_api_client"
  spec.summary       = %q{Interfaces with the Bands In Town API.}
	spec.description	 = %q{Provides a light weight wrapper to easily request json or xml data from Bands In Town.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency 'rspec'
end
