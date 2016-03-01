class ApplicationMailer < ActionMailer::Base
  default from: "hello@benchy.me"
  layout 'mailer'
end
