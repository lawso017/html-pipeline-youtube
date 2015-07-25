# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html/pipeline/youtube/version'

Gem::Specification.new do |spec|
  spec.name          = "html-pipeline-youtube"
  spec.version       = HTML::Pipeline::Youtube::VERSION
  spec.authors       = ["Stan Luo"]
  spec.email         = ["stan001212@gmail.com"]

  spec.summary       = %q{Youtube filter for html-pipeline}
  spec.description   = %q{A html-pipeline filter that converts youtube url into iframe}
  spec.homepage      = "https://github.com/st0012/html-pipeline-youtube"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_dependency "html-pipeline", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end