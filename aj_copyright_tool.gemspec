
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aj_copyright_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "aj_copyright_tool"
  spec.version       = AjCopyrightTool::VERSION
  spec.authors       = ["a j"]
  spec.email         = ["ang@wow.com"]

  spec.summary       = %q{Various view specific methods for application i use daily}
  spec.description   = %q{Has generated HTML data for Rails application}
  spec.homepage      = "https://github.com/ajstacks"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
