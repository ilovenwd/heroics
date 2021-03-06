# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'heroics/version'

Gem::Specification.new do |spec|
  spec.name          = 'heroics'
  spec.version       = Heroics::VERSION
  spec.authors       = ['geemus', 'jkakar']
  spec.email         = ['geemus@gmail.com', 'jkakar@kakar.ca']
  spec.description   = 'A Ruby client generator for HTTP APIs described with a JSON schema'
  spec.summary       = 'A Ruby client generator for HTTP APIs described with a JSON schema'
  spec.homepage      = 'https://github.com/interagent/heroics'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep('^(test|spec|features)/')
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'minitest', '4.7.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'turn'

  spec.add_dependency 'erubis', '~> 2.7.0'
  spec.add_dependency 'excon'
  spec.add_dependency 'moneta'
  spec.add_dependency 'multi_json', '>= 1.9.2'
  spec.add_dependency 'netrc'
end
