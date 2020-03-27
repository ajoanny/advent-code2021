require_relative 'lib/ruby_project/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_project"
  spec.version       = RubyProject::VERSION
  spec.authors       = ["ARJ"]
  spec.email         = ["arj@octo.com"]

  spec.summary       = %q{Ruby Project}
  spec.description   = %q{Ruby Project}
  spec.homepage      = ""
  spec.required_ruby_version = Gem::Requirement.new(">= 3")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
