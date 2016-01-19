# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "resque_failed_job_mailer/version"

Gem::Specification.new do |s|
  s.name        = "resque-failed-job-mailer-2"
  s.version     = ResqueFailedJobMailer::VERSION
  s.authors     = ["Anand Agrawal", "Rajashree Malvade", "An Vo"]
  s.email       = ["aagrawal@thoughtworks.com", "rajashreermalvade@gmail.com", "thien.an.vo.nguyen@gmail.com"]
  s.homepage    = 'https://github.com/anvox/resque_failed_job_mailer'
  s.summary     = %q{Gem that sends mail in case of resque job failure.}
  s.description = %q{Gem that sends mail in case of resque job failure. Extend to customize email summary, payload, exception.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'rspec', '~> 0'
  s.add_development_dependency 'actionmailer', '~> 0'
  s.add_development_dependency 'resque', '~> 0'
end
