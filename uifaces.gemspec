# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uifaces/version'

Gem::Specification.new do |spec|
  spec.name          = "uifaces"
  spec.version       = UIFaces::VERSION
  spec.authors       = ["Jake Moffatt"]
  spec.email         = ["jakeonrails@gmail.com"]
  spec.description   = %q{Get profile images from uifaces.com, by @calebogden}
  spec.summary       = %q{Get profile images from uifaces.com, by @calebogden}
  spec.homepage      = "http://jakeonrails.github.io/uifaces"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
