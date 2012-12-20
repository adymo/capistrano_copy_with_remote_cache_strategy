require 'rubygems'

SPEC = Gem::Specification.new do |s|
    s.name        = "capistrano_rsynced_remote_cache"
    s.version     = "0.1"
    s.author      = "Alexander Dymo"
    s.email       = "alex@alexdymo.com"
    s.homepage    = "http://github.com/adymo/capistrano_rsynced_remote_cache"
    s.platform    = Gem::Platform::RUBY
    s.summary     = "Capistrano rsynced_remote_cache deployment strategy"
    s.description = "Capistrano rsynced_remote_cache deployment strategy"

    s.add_dependency('capistrano',         '>= 2.13.0')

    s.files         = `git ls-files`.split("\n")

    s.require_path      = "lib"
    s.has_rdoc          = false
end
