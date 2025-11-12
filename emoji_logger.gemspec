# frozen_string_literal: true

require_relative "lib/emoji_logger/version"

Gem::Specification.new do |spec|
  spec.name          = "emoji_logger"
  spec.version       = EmojiLogger::VERSION
  spec.authors       = ["Abhishek Tanwar"]
  spec.email         = [ENV.fetch("EMOJI_LOGGER_EMAIL", "")]

  spec.summary       = "A fun logger that adds emojis to your log messages!"
  spec.description   = "EmojiLogger is a simple Ruby logger that makes console logging more expressive with emojis for info, warnings, and errors."
  spec.homepage      = "https://github.com/at9596/emoji_logger"
  spec.license       = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Include all files under version control except tests
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development dependencies
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.12"
end
