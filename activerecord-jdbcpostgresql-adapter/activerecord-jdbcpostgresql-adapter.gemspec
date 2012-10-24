# -*- encoding: utf-8 -*-
arjdbc_lib = File.expand_path("../../lib", __FILE__)
$:.push arjdbc_lib unless $:.include?(arjdbc_lib)
require 'arjdbc/version'
version = ArJdbc::Version::VERSION
Gem::Specification.new do |s|
  s.name        = "tgbyte-activerecord-jdbcpostgresql-adapter"
  s.version     = version
  s.platform    = Gem::Platform::RUBY
  s.authors = ["Nick Sieger, Ola Bini and JRuby contributors"]
  s.description = %q{Install this gem to use Postgres with JRuby on Rails.}
  s.email = %q{nick@nicksieger.com, ola.bini@gmail.com}
  s.files = [
    "Rakefile",
    "README.txt",
    "LICENSE.txt",
    "lib/active_record/connection_adapters/jdbcpostgresql_adapter.rb"
  ]
  s.homepage = %q{https://github.com/tgbyte/activerecord-jdbc-adapter}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jruby-extras}
  s.summary = %q{Postgres JDBC adapter for JRuby on Rails.}

  s.add_dependency 'tgbyte-activerecord-jdbc-adapter', "~>#{version}"
  s.add_dependency 'tgbyte-jdbc-postgres', '>= 9.0', '< 9.2'
end

