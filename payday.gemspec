# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'payday/version'

Gem::Specification.new do |s|
  s.name        = 'payday'
  s.version     = Payday::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alan Johnson']
  s.email       = ['alan@commondream.net']
  s.homepage    = 'https://github.com/commondream/payday'
  s.summary     = 'A simple library for rendering invoices.'
  s.description = <<~DESC
    Payday is a library for rendering invoices. At present it supports rendering
    invoices to pdfs, but we're planning on adding support for other formats in
    the near future.
  DESC

  s.add_dependency 'i18n', '>= 0.6.4', '<= 2'
  s.add_dependency 'money', '~> 6.5'
  s.add_dependency 'prawn', '~> 1.0.0'
  s.add_dependency 'prawn-svg', '~> 0.15.0.0'

  s.add_development_dependency('rspec', '~> 3.1.0')

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
