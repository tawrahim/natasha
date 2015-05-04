# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'natasha/version'

Gem::Specification.new do |spec|
  spec.name          = "natasha"
  spec.version       = Natasha::VERSION
  spec.authors       = ["Tawheed Abdul-Raheem"]
  spec.email         = ["tawrahim@gmail.com"]

  spec.summary       = %q{A simple programming language with the goal of learning compilers}
  spec.description   = %q{Natasha is a simple programmig langauge that does basic arithmetic
                          The goal of this language is an expirement of how a compiler works}
  spec.homepage      = "http://www.tawheedraheem.com/"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
    #raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
