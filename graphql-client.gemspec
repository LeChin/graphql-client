# frozen_string_literal: true
Gem::Specification.new do |s|
  s.name = "graphql-client"
  s.version = "0.19.0"
  s.summary = "GraphQL Client for Rails 7"
  s.description = "A Ruby library for declaring, composing and executing GraphQL queries"
  s.homepage = "https://github.com/github/graphql-client"
  s.license = "MIT"

  s.files = Dir["README.md", "LICENSE", "lib/**/*.rb"]

  s.add_dependency "activesupport", ">= 7.0"
  s.add_dependency "graphql"

  s.add_development_dependency "actionpack", ">= 7.0"
  s.add_development_dependency "erubi", "~> 1.12"
  s.add_development_dependency "minitest", "~> 5.17"
  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rubocop-github", "~> 0.20"
  s.add_development_dependency "rubocop", "~> 1.45"

  s.required_ruby_version = ">= 3.1.0"

  s.email = "engineering@github.com"
  s.authors = "GitHub"
end
