# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'period/version'

Gem::Specification.new do |spec|
  spec.name          = "period"
  spec.version       = Period::VERSION
  spec.authors       = ["Philip Sampaio"]
  spec.email         = ["philip.sampaio@gmail.com"]
  spec.summary       = %q{A gem to work with periods of dates}
  spec.description   = %q{
    Work with period of dates in a easy way.
    This gem provides functionalities like workdays, date as string and period to calendars. 
  }
  spec.homepage      = "https://github.com/magnetis/period"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", '~> 4.0.3'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
