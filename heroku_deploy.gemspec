# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = 'heroku_deploy'
  spec.version       = HerokuDeploy::VERSION
  spec.authors       = ['Scott Smith']
  spec.email         = ['scottnelsonsmith@gmail.com']
  spec.description   = %q{In addition to pushing application to Heroku, beforehand it determines whether
Heroku environment variables have changed and uploads the changes if there are any.}
  spec.summary       = %q{Manages deploying Ruby applications to Heroku}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'roboconf', '~> 0.0.2'
end
