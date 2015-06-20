# -*- ruby -*-

require 'rubygems'
require 'hoe'
gem 'rake-compiler', '>= 0.4.1'
require "rake/extensiontask"

Hoe.plugin :debugging
Hoe.plugin :git
# Hoe.plugin :minitest

HOE = Hoe.spec('nfc') do
  developer('Aaron Patterson', 'aaron@tenderlovemaking.com')
  self.readme_file   = 'README.rdoc'
  self.history_file  = 'CHANGELOG.rdoc'
  self.extra_rdoc_files  = FileList['*.rdoc']
  self.spec_extras = { :extensions => ["ext/nfc/extconf.rb"] }
end

RET = Rake::ExtensionTask.new("nfc", HOE.spec) do |ext|
  ext.lib_dir = File.join('lib', 'nfc')
end

task :kill do
  pid = `sudo launchctl list | grep pcscd`[/^\d+/]
  `sudo kill #{pid}` if pid
end

# vim: syntax=Ruby
