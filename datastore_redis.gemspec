$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "datastore_redis/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "datastore_redis"
  s.version     = DatastoreRedis::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DatastoreRedis."
  s.description = "TODO: Description of DatastoreRedis."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
