#!/usr/bin/env ruby
task default: %w[build]

desc "Bundle install dependencies"
task :bundle do
  sh "bundle install"
end

desc "Build the lf_integrations gem"
task :build  do
  sh "gem build lf_integrations.gemspec"
end

desc "install lf_integrations-0.0.1.gem"
task install: %w[build] do
  sh "gem install lf_integrations-0.0.1.gem"
end
