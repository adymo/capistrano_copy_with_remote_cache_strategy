# Capistrano rsynced_remote_cache Deployment Strategy

## Description
If you have Jekyll based site and don't want to install jekyll on the web server, use this strategy.

## Installation
 gem install rsynced_remote_cache

## Usage
Add these lines to your deploy.rb file:
 set :repository, <local dir>
 set :scm, :none
 set :deploy_via, :rsynced_remote_cache
