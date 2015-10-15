# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "resque_failed_job_mailer/version"

Gem::Specification.new do |s|
  s.name        = "saleshood-resque-failed-job-mailer"
  s.version     = ResqueFailedJobMailer::VERSION
  s.authors     = ["Anand Agrawal", "Rajashree Malvade", "An Vo"]
  s.email       = ["aagrawal@thoughtworks.com", "rajashreermalvade@gmail.com", "heosuax@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Gem that sends mail in case of resque job failure. Customized for app.saleshood.com.}
  s.description = %q{Gem that sends mail in case of resque job failure. Customized for app.saleshood.com.}

  # s.rubyforge_project = "resque-failed-job-mailer"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "actionmailer"
  s.add_development_dependency "resque"
end
