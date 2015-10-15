Overview
--------

Folk from https://github.com/anandagrawal84/resque_failed_job_mailer and customize for app.saleshood.com


Installation
------------

TBA


Usage
-----
All you need to do is configure ActionMailer for smtp details. Add following configuration file `resque_failed_job_mailer.rb` in `config/initializer` folder

```ruby
Resque::Failure::Notifier.configure do |config|
  config.from = 'dummy@dummy.com' # from address
  config.to = 'dummy@dummy.com' # to address
  config.include_payload = true # enabled by default
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
