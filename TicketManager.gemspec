$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "TicketManager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "TicketManager"
  s.version     = TicketManager::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of TicketManager."
  s.description = "TODO: Description of TicketManager."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "jquery-rails"
  s.add_dependency "dm-rails", "~> 1.2.0.rc1"
  s.add_dependency "slim"
  s.add_dependency "responders"
  s.add_dependency "simple_form"
  s.add_development_dependency "sqlite3"
end
