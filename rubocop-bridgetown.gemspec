# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)

Gem::Specification.new do |s|
  s.name        = "rubocop-bridgetown"
  s.version     = "0.4.0"
  s.authors     = ["Bridgetown Team"]
  s.email       = ["maintainers@bridgetownrb.com"]
  s.homepage    = "https://github.com/bridgetownrb/rubocop-bridgetown"
  s.license     = "MIT"
  s.summary     = "Code style check for Bridgetown projects"
  s.description = "A RuboCop extension to enforce common code style in Bridgetown projects and beyond"

  s.files       = `git ls-files -z`.split("\x0").select do |file|
    file.match(%r!(^lib/)|LICENSE|README.md|.rubocop.yml!)
  end

  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.5.0"

  s.add_runtime_dependency "rubocop", "~> 1.23"
  s.add_runtime_dependency "rubocop-performance", "~> 1.12"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake", "~> 12.0"
end
