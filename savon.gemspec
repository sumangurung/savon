# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{savon}
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Harrington"]
  s.date = %q{2009-12-06}
  s.description = %q{Heavy metal Ruby SOAP client library}
  s.email = %q{me@rubiii.com}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "CHANGELOG",
     "README.textile",
     "Rakefile",
     "VERSION",
     "lib/savon.rb",
     "lib/savon/client.rb",
     "lib/savon/core_ext.rb",
     "lib/savon/core_ext/datetime.rb",
     "lib/savon/core_ext/hash.rb",
     "lib/savon/core_ext/object.rb",
     "lib/savon/core_ext/string.rb",
     "lib/savon/core_ext/symbol.rb",
     "lib/savon/core_ext/uri.rb",
     "lib/savon/request.rb",
     "lib/savon/response.rb",
     "lib/savon/soap.rb",
     "lib/savon/wsdl.rb",
     "lib/savon/wsse.rb",
     "spec/fixtures/multiple_user_response.xml",
     "spec/fixtures/soap_fault.xml",
     "spec/fixtures/user_fixture.rb",
     "spec/fixtures/user_response.xml",
     "spec/fixtures/user_wsdl.xml",
     "spec/http_stubs.rb",
     "spec/savon/client_spec.rb",
     "spec/savon/core_ext/datetime_spec.rb",
     "spec/savon/core_ext/hash_spec.rb",
     "spec/savon/core_ext/object_spec.rb",
     "spec/savon/core_ext/string_spec.rb",
     "spec/savon/core_ext/symbol_spec.rb",
     "spec/savon/core_ext/uri_spec.rb",
     "spec/savon/request_spec.rb",
     "spec/savon/response_spec.rb",
     "spec/savon/savon_spec.rb",
     "spec/savon/soap_spec.rb",
     "spec/savon/wsdl_spec.rb",
     "spec/savon/wsse_spec.rb",
     "spec/spec_helper.rb",
     "spec/spec_helper_methods.rb"
  ]
  s.homepage = %q{http://github.com/rubiii/savon}
  s.rdoc_options = ["--charset=UTF-8", "--title", "Savon", "--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Heavy metal Ruby SOAP client library}
  s.test_files = [
    "spec/fixtures/user_fixture.rb",
     "spec/http_stubs.rb",
     "spec/savon/client_spec.rb",
     "spec/savon/core_ext/datetime_spec.rb",
     "spec/savon/core_ext/hash_spec.rb",
     "spec/savon/core_ext/object_spec.rb",
     "spec/savon/core_ext/string_spec.rb",
     "spec/savon/core_ext/symbol_spec.rb",
     "spec/savon/core_ext/uri_spec.rb",
     "spec/savon/request_spec.rb",
     "spec/savon/response_spec.rb",
     "spec/savon/savon_spec.rb",
     "spec/savon/soap_spec.rb",
     "spec/savon/wsdl_spec.rb",
     "spec/savon/wsse_spec.rb",
     "spec/spec_helper.rb",
     "spec/spec_helper_methods.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_runtime_dependency(%q<crack>, [">= 0.1.4"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.8"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_development_dependency(%q<fakeweb>, [">= 1.2.7"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<crack>, [">= 0.1.4"])
      s.add_dependency(%q<rspec>, [">= 1.2.8"])
      s.add_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_dependency(%q<fakeweb>, [">= 1.2.7"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<crack>, [">= 0.1.4"])
    s.add_dependency(%q<rspec>, [">= 1.2.8"])
    s.add_dependency(%q<mocha>, [">= 0.9.7"])
    s.add_dependency(%q<fakeweb>, [">= 1.2.7"])
  end
end
