# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery_validation/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery_validation"
  spec.version       = JqueryValidation::VERSION
  spec.authors       = ["shanky-munjal"]
  spec.email         = ["shanky.munjal@quovantis.com"]
  spec.description   = %q{It will handle validations inline}
  spec.summary       = %q{Validations with ajax}
  spec.homepage      = "http://rubygems.org/gems/jquery_validation"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
