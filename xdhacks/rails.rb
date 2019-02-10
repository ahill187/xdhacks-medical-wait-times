#!/usr/bin/ruby
# Stub rails command to load rails from Gems or print an error if not installed.
require 'rubygems'

version = ">= 0"
if ARGV.first =~ /^_(.*)_$/ and Gem::Version.correct? $1 then
  version = $1
  ARGV.shift
end

begin
  gem 'railties', version or raise
  puts version
rescue Exception
  puts 'Rails is not currently installed on this system. To get the latest version, simply type:'
  puts
  puts '    $ sudo gem install rails'
  puts
  puts 'You can then rerun your "rails" command.'
  exit 0
end

puts Gem.bin_path('railties', 'rails', version)
load Gem.bin_path('railties', 'rails', version)
