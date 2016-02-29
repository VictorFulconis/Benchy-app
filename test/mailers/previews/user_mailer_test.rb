class TestMailer < ActionMailer::Base
  def message
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'victor.fulconis@gmail.com',
      :from => 'hello@adopteunsenior.fr',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
