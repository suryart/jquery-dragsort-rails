# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "jquery/dragsort/rails/version"

Gem::Specification.new do |s|
  s.name        = "jquery-dragsort-rails"
  s.version     = JQuery::DragSort::Rails::VERSION
  s.authors     = ["Surya Tripathi"]
  s.email       = ["raj.surya19@gmail.com"]
  s.homepage    = "https://github.com/suryart/jquery-dragsort-rails"
  s.summary     = %q{jQuery List Drag Sort for Rails 3.1 Asset Pipeline}
  s.description = %q{jQuery List Drag Sort by http://dragsort.codeplex.com/, integrated for Rails 3.1 Asset Pipeline}

  s.rubyforge_project = "jquery-dragsort-rails"

  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.md"] 
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency             'railties',   '>= 3.1'
  s.add_dependency             'actionpack', '>= 3.1'
  s.add_development_dependency 'rails', '>= 3.1' 
end