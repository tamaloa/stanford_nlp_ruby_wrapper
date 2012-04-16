require 'rake/testtask'
require 'bundler/gem_tasks'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = Rake::FileList['test/*test.rb']
end

desc "Run tests"
task :default => :test