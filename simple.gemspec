
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simple/version"

Gem::Specification.new do |spec|
  spec.name          = "simple"
  spec.version       = Simple::VERSION
  spec.authors       = ["David Blackmon"]
  spec.email         = ["davidkblackmon@gmail.com"]

  spec.summary       = %q{Simple language}
  spec.description   = %q{Simple language}
  spec.homepage      = "http://www.github.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
