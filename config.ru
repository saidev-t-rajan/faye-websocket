# Require all gems in Gemfile
require 'rubygems'
require 'bundler'
Bundler.require

require './app'
require './websocket/server'

use Websocket::Server

run App