# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "faker_extensions"
  spec.version       = FakerExtensions::VERSION
  spec.authors       = ["Mike Urban"]
  spec.email         = ["mike@marskalgroup.com"]
  spec.summary       = %q{This gem adds a few extra handy methods to the Faker gem}
  # spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.add_development_dependency 'Faker'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
