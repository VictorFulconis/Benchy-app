class ShareMailer < ApplicationMailer
  def creation_confirmation(share)
    @share = share
    mail(
      to:       @share.user.email,
      subject:  "Someone just shared a dashboard with you!"
    )
  end
end
