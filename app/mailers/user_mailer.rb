class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Bienvenue sur Benchy')
    # This will render a view in `app/views/user_mailer`!
  end
end
