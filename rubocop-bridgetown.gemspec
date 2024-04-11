# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)

Gem::Specification.new do |s|
  s.name        = "rubocop-bridgetown"
  s.version     = "0.5.0"
  s.authors     = ["Bridgetown Team"]
  s.email       = ["maintainers@bridgetownrb.com"]
  s.homepage    = "https://github.com/bridgetownrb/rubocop-bridgetown"
  s.license     = "MIT"
  s.summary     = "Code style check for Bridgetown projects"
  s.description = "A RuboCop extension to enforce common code style in Bridgetown and beyond"
  s.metadata["rubygems_mfa_required"] = "true"

  s.files = `git ls-files -z`.split("\x0").select do |file|
    file.match(%r!(^lib/)|LICENSE|README.md|.rubocop.yml!)
  end

  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 3.1.0"

  s.add_runtime_dependency "rubocop", "~> 1.23"
  s.add_runtime_dependency "rubocop-performance", "~> 1.12"
end
