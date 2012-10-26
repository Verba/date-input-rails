#!/usr/bin/env rake

require 'bundler/setup'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

Rake::TestTask.new(:spec) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :default => :spec
