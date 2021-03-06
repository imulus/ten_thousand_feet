require 'pry'
require 'rest-client'
require 'ten_thousand_feet/client'
require 'ten_thousand_feet'
require 'yaml'
require 'vcr'
require 'webmock'

$AUTH = YAML.load_file('auth.yml')

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
end