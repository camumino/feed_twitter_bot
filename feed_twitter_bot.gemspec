$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feed_twitter_bot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feed_twitter_bot"
  s.version     = FeedTwitterBot::VERSION
  s.authors     = ["cmuino", "sriera"]
  s.email       = ["camumino@gmail.com"]
  s.homepage    = "http://test.com"
  s.summary     = "FeedTwitterBot."
  s.description = "Description of FeedTwitterBot."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.14.1"
  s.add_dependency "twitter"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "debugger"
end
