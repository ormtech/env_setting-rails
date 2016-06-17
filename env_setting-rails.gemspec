# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'env_setting-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "env_setting-rails"
  spec.version       = EnvSetting::Railtie::VERSION
  spec.authors       = ["Will Spurgin"]
  spec.email         = ["will.spurgin@orm-tech.com"]
  spec.summary       = %q{Mange your environment variables in OOP style}
  spec.description   = %q{Allows OOP access to ENV variables by a slight re-write of the env_bang gem.}
  spec.homepage      = "https://github.com/ormtech/env_setting"
  spec.license       = "MIT"

  spec.files         = %w[lib/env_setting-rails.rb lib/env_setting-rails/version.rb]
  spec.require_paths = ["lib"]

  spec.add_dependency 'env_setting', EnvSetting::Railtie::VERSION
  spec.add_dependency 'dotenv-rails'
end
