# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
require File.join(File.dirname(__FILE__), "lib/rubyhorn/version")
Gem::Specification.new do |s|
  s.name = "rubyhorn"
  s.version = Rubyhorn::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Chris Colvard"]
  s.email = ["cjcolvar@indiana.edu"]
  s.summary = %q{Opencast Matterhorn REST API ruby library }
  s.description = %q{Opencast Matterhorn REST API ruby library : REQUIRES Matterhorn 1.2+}
  s.homepage = "http://github.com/cjcolvar/rubyhorn"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

#  s.add_dependency "fastercsv"
#  s.add_dependency "rest-client"
#  s.add_dependency "nokogiri"
  s.add_dependency "mime-types"
  s.add_dependency "activesupport"
  s.add_dependency "activemodel"
  s.add_dependency "json"
  s.add_dependency "net-http-digest_auth"
  s.add_dependency "multipart-post"
  s.add_dependency "om"
#  s.add_dependency "savon"

  s.add_development_dependency("rake")
  s.add_development_dependency("shoulda")
  s.add_development_dependency("bundler", ">= 1.0.14")
  s.add_development_dependency("rspec")
  s.add_development_dependency("yard")
#  s.add_development_dependency("jettywrapper")

  s.add_development_dependency("rspec_junit_formatter")
end