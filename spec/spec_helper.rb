# -*- coding: utf-8 -*-

require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
end

require 'tumblife'
require 'json'
require 'hashie'
require 'rspec'
require 'webmock/rspec'

def a_get(path, endpoint = Tumblife.endpoint)
  a_request(:get, endpoint + path)
end

def a_post(path, endpoint = Tumblife.endpoint)
  a_request(:post, endpoint + path)
end

def stub_get(path, endpoint = Tumblife.endpoint)
  stub_request(:get, endpoint + path)
end

def stub_post(path, endpoint = Tumblife.endpoint)
  stub_request(:post, endpoint + path)
end
