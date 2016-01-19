[![Build Status](https://travis-ci.org/heosuax/resque_failed_job_mailer.svg?branch=master)](https://travis-ci.org/heosuax/resque_failed_job_mailer)

Overview
--------

Send email with predefined template when resque worker die of any reason.

Folk from https://github.com/anandagrawal84/resque_failed_job_mailer and customizable.

Making it general and seperate from anandagrawal84/resque_failed_job_mailer due to inactive repo.


Installation
------------

```bash
gem install resque-failed-job-mailer-2
```

Or add to Gemfile:

```
gem 'resque-failed-job-mailer-2'
```


Usage
-----
All you need to do is configure ActionMailer for smtp details. Add following configuration file `resque_failed_job_mailer.rb` in `config/initializer` folder

```ruby
Resque::Failure::Notifier.configure do |config|
  config.from = 'dummy@dummy.com' # from address
  config.to = 'dummy@dummy.com' # to address
  config.include_payload = true # disabled by default for security
  config.include_exception = true # disabled by default for security
  config.tags = ["ProjectX","Wolverine","Resque"] # [ProjectX][Wolverine][Resque] tag displayed in email summary
end
```

as soon as resque job fail it would send out an email to the configured email address.

Configuration
-------------

If you want to use your own email mechanism then add following configuration

```ruby
Resque::Failure::Notifier.configure do |config|
  config.mailer = ActionMailerClass
  config.mail = ActionMailerMailMethod
  config.from = 'dummy@dummy.com' # from address
  config.to = 'dummy@dummy.com' # to address
end
```

`config.mailer` is any class that extends `ActionMailer::Base`

`config.mail` is mail in class given above in `config.mailer`
