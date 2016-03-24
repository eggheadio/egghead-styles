# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'egghead/styles/version'

Gem::Specification.new do |spec|
  spec.name          = "egghead-styles"
  spec.version       = Egghead::Styles::VERSION
  spec.authors       = ["egghead.io"]
  spec.email         = ["info@egghead.io"]

  spec.summary       = %q{Holds styles required for egghead.io}
  spec.homepage      = "https://github.com/eggheadio/egghead-styles"
  spec.description   = %q{To reduce development friction egghead.io has extracted its core CSS styles into a gem for use across projects.}
  spec.license       = "MIT"

  spec.files         = Dir["{lib,app,vendor}/**/*"] + ["README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'gem-release', '~> 0.7.4'

end
