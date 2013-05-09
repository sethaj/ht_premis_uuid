# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ht_premis_uuid/version'

Gem::Specification.new do |spec|
  spec.name          = "ht_premis_uuid"
  spec.version       = HtPremisUuid::VERSION
  spec.authors       = ["Michigan Publishing"]
  spec.email         = ["lib.ptg@umich.edu"]
  spec.summary       = %q{ A UUID (Version 3) generator for PREMIS events based off of a unique object id}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "uuidtools", "~> 2.1.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
