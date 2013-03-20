# ENV["RAILS_ENV"] ||= "test"
# require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')

# begin
#   require 'database_cleaner'
#   require 'database_cleaner/cucumber'

#   DatabaseCleaner.strategy = :transaction
# rescue NameError
#   raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
# end

# Before do
#   # DatabaseCleaner.start
#   puts "hello before"
#   puts DatabaseCleaner[:active_record, :connection => :test].start
# end

# After do |scenario|
#   # DatabaseCleaner.clean
#   puts "Hellop after"
#   puts DatabaseCleaner[:active_record, :connection => :test].clean
# end