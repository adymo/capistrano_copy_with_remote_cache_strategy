require 'rubygems'

SPEC = Gem::Specification.new do |s|
    s.name        = "capistrano_copy_with_remote_cache_strategy"
    s.version     = "0.1"
    s.author      = "Alexander Dymo"
    s.email       = "alex@alexdymo.com"
    s.homepage    = "http://github.com/adymo/capistrano_copy_with_remote_cache_strategy"
    s.platform    = Gem::Platform::RUBY
    s.summary     = "Capistrano copy_with_remote_cache deployment strategy"
    s.description = "This is a mix of Capistrano copy and remote_cache strategy. Like copy it works with unversioned directories (set :scm, :none). Like remote_cache it rsyncs local repository with remote cache and only then copies remote cache to release directory."

    s.add_dependency('capistrano',         '>= 2.13.0')

    s.files         = `git ls-files`.split("\n")

    s.require_path      = "lib"
    s.has_rdoc          = false
end
