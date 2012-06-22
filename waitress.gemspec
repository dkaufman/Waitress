# -*- encoding: utf-8 -*-
require File.expand_path('../lib/waitress/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Kaufman"]
  gem.email         = ["daniel.garrett.kaufman@gmail.com"]
  gem.description   = "Pusher wrapper for Bar Trivia App"
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "waitress"
  gem.require_paths = ["lib"]
  gem.version       = Waitress::VERSION

  gem.add_dependency "pusher"
end
