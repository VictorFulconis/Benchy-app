class ShareMailerPreview < ActionMailer::Preview
  def creation_confirmation
    share = Share.last
    ShareMailer.creation_confirmation(share)
  end
end
