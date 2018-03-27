require "bundler/gem_tasks"
require 'rake/testtask'

task :default => :test

task :test do
  Rake::TestTask.new do |t|
    t.pattern = "test/**/*_test.rb"
    t.libs << "test/test_helper"
  end
end
