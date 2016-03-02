class Share < ActiveRecord::Base
  belongs_to :user
  belongs_to :dashboard
  after_create :send_share_email

  private

  def send_share_email
    ShareMailer.creation_confirmation(self).deliver_now
  end
end
