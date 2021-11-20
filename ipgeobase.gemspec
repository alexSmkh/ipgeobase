# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name = "ipgeobase"
  spec.version = Ipgeobase::VERSION
  spec.authors = ["Alexander Samokhvalov"]
  spec.email = ["alexshikari9333@gmail.com"]

  spec.summary = "Get data about an ip address"
  spec.description = "This gem will help you learn more about an ip address you are \
  giving. Gem gives you information about a city, country, country code, latitude and longitude of a location."
  spec.homepage = "https://github.com/alexSmkh/ipgeobase"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alexSmkh/ipgeobase"
  spec.metadata["changelog_uri"] = "https://github.com/alexSmkh/ipgeobase"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
