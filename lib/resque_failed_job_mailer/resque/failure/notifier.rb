require 'action_mailer'

module Resque
  module Failure
    class Notifier < Base
      class << self
        attr_accessor :mailer, :mail, :from, :to, :include_payload, :include_exception, :tags

        def configure
          yield self
          self.include_payload = false if include_payload.nil?
          self.include_exception = false if include_exception.nil?
          Resque::Failure.backend = self unless Resque::Failure.backend == Resque::Failure::Multiple
        end
      end

      def save
        self.class.mailer.send(self.class.mail, self).deliver
      rescue
      end
    end
  end
end
