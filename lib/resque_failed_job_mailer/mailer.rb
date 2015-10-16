module ResqueFailedJobMailer
  class Mailer < ::ActionMailer::Base
    def alert notifier
      @notifier = notifier
      text = ERB.new(File.read(File.dirname(__FILE__) + "/alert.html.erb")).result(binding)
      tags = Resque::Failure::Notifier.tags
      subject = "[#{tags.join('][')}] #{@notifier.exception}"
      mail :from => Resque::Failure::Notifier.from, :to => Resque::Failure::Notifier.to, :subject => subject do |format|
        format.html { render :text => text }
      end
    end
  end
end
