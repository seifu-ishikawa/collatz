# frozen_string_literal: true

require_relative "lib/collatz/version"

Gem::Specification.new do |spec|
  spec.name          = "collatz"
  spec.version       = Collatz::VERSION
  spec.authors       = ["ISHIKAWA"]
  spec.email         = ["ishikawa@i-seifu.jp"]

  spec.summary       = "A Ruby gem for Collatz conjecture calculations."
  spec.description   = "Provides utility functions to compute and analyze Collatz sequences."
  spec.homepage      = "https://github.com/seifu-ishikawa/collatz" # リポジトリに合わせて適宜変更してください
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Gem に含めるファイルを指定
  spec.files = Dir.glob("{lib,bin,exe}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) } +
               %w[README.md LICENSE.txt]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # 開発用依存関係（RSpec, RuboCop）
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.0"
  spec.add_development_dependency "rubocop-rspec", "~> 3.0"
end