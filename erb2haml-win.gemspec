# encoding: utf-8
require File.expand_path("../lib/erb2haml-win/version", __FILE__)

Gem::Specification.new do |s|
  s.name                = "erb2haml-win"
  s.version             = "#{ERb2Haml::VERSION}"
  s.date                = Time.now.strftime('%Y-%m-%d')
  s.summary             = "Perform bulk conversion of all html.erb files to Haml in views folder. Windows only. Also delete erb files"
  s.description         = "Simple rake task to bulk covert ERB HAML files in a Rails app to Haml."
  s.homepage            = "http://github.com/PikachuEXE/erb2haml"
  s.email               = "pikachuexe@gmail.com"
  s.authors             = ['David Leung','PikachuEXE']
  s.platform            = Gem::Platform::RUBY

  s.files               = %w[Gemfile Rakefile]
  s.files              += Dir.glob("{lib}/**/*")
  s.extra_rdoc_files    = %w[LICENSE README.md]

  s.require_paths       = ["lib"]
  s.add_runtime_dependency "haml"
  s.add_runtime_dependency "hpricot"
  s.add_runtime_dependency "ruby_parser"
end

