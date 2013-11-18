# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'p9lppt13/version'

Gem::Specification.new do |spec|
  spec.name          = "p9lppt13"
  spec.version       = p9lppt13::VERSION
  spec.authors       = ["José Alexander Delgado Hernandez"]
  spec.email         = ["alu0100596403@ull.edu.es"]
  spec.description   = %q{CoAuthor: Sem Ramos Herrera}
  spec.summary       = %q{Práctica #9 LPP}
  spec.homepage      = "http://www.ull.es/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
