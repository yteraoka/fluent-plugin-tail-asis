# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-tail-asis"
  gem.version       = "0.0.1"
  gem.authors       = ["TERAOKA Yoshinori"]
  gem.email         = ["jyobijyoba@gmail.com"]
  gem.description   = %q{fluentd input plugin, whole line read into single key}
  gem.summary       = %q{fluentd input plugin, whole line read into single key}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.rubyforge_project = "fluent-plugin-tailasis"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "fluentd"
  gem.add_runtime_dependency "fluentd"
end
