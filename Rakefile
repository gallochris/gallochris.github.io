# encoding: utf-8

ENVIRONMENTS = %w(development staging production)

def banner(message)
  puts "=== #{message} ==="
end

def run!(command)
  output = `#{command}`
  unless $? == 0
    puts "`#{command}` failed:"
    puts output
  end
end

def load_env(environment)
  return unless ENV["JEKYLL_ENV"].to_s.empty?
  ENV["JEKYLL_ENV"] = environment
  require 'rubygems'
  require 'bundler/setup'
  require "dotenv"
  Dotenv.overload('.env')
  Dotenv.overload(".env.#{environment}") if File.exist?(".env.#{environment}")
end

namespace :environments do
  ENVIRONMENTS.each do |environment|
    task environment do
      load_env(environment)
    end
  end

  task :default => ['environments:development']
end

namespace :build do
  ENVIRONMENTS.each do |env|
    desc "Build for #{env}"
    task env => ["environments:#{env}", :clean] do
      banner("Build (#{env})")
      run!("bundle exec jekyll build --config _config.yml")
    end
  end
end

desc "Build for development"
task :build => "build:development"

namespace :watch do
  ENVIRONMENTS.each do |env|
    desc "Watch for changes and rebuild for #{env} as needed"
    task env => "build:#{env}" do
      banner("Watch (#{env})")
      system("bundle exec jekyll build --watch --config _config.yml")
      trap("INT") { puts; puts "Parting is such sweet sorrow"; exit 0 }
      sleep
    end
  end
end

desc "Watch for changes and rebuild for development as needed"
task :watch => "watch:development"

namespace :deploy do
  (ENVIRONMENTS - ["development"]).each do |env|
    desc "Deploy to #{env}"
    task env, [:force] => "build:#{env}" do |t, args|
      banner("Deploying (#{env}) to #{ENV["S3_BUCKET"]}")
      command = ["s3_website push"]
      command << '--force' if args.force
      exec(command.join(' '))
    end
  end
end

desc "Clean the build directory"
task :clean do
  banner("Clean")
  run!("rm -rf build/*")
end

task :default => [:watch]
