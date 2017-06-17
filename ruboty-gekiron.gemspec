# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'ruboty/gekiron/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-gekiron"
  # spec.version       = Ruboty::Gekiron::VERSION
  spec.authors       = ["Takuma Homma"]
  spec.email         = ["sfprhythnn@gmail.com"]

  spec.summary       = "Ruboty handler to generate conversation topic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
