# Capistrano copy_with_remote_cache Deployment Strategy

## Description
This is a mix of Capistrano copy and remote_cache strategy. Like copy it works with unversioned directories (set :scm, :none). Like remote_cache it rsyncs local repository with remote cache and only then copies remote cache to release directory.

## When to Use
This is especially useful for Jekyll-generated sites when jekyll is not installed on web servers.

## Installation
 gem install copy_with_remote_cache

## Usage
Add these lines to your deploy.rb file:
 set :repository, <local dir>
 set :scm, :none
 set :deploy_via, :copy_with_remote_cache
