# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

desc "Run srb tc"
task "srb" do
  puts "Running Sorbet..."
  `srb tc`
end

task default: %i[test rubocop srb]
