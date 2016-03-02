class ShareMailer < ApplicationMailer
  def creation_confirmation(share)
    @share = share

    mail(
      to:       @share.user.email,
      subject:  "Whe just shared the #{@share.dashboard.name} dashboard with you!"
    )
  end
end
