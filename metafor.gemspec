# frozen_string_literal: true

require_relative "lib/metafor/version"

Gem::Specification.new do |spec|
  spec.name = "metafor"
  spec.version = Metafor::VERSION
  spec.authors = ["Andrew Kang"]
  spec.email = ["andrew.b.kang@gmail.com"]

  spec.summary = "get great analogies and metaphors for complex concepts"
  spec.description = "a gem that takes complex concepts and finds great analogies/metaphors to digest the info"
  spec.homepage = "https://github.com/andrewbkang"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andrewbkang/metafor"
  spec.metadata["changelog_uri"] = "https://github.com/andrewbkang/metafor/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    files = `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
    p files
    files
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
