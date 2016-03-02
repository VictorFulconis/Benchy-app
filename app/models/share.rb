class Share < ActiveRecord::Base
  belongs_to :user
  belongs_to :dashboard

  private

  def send_share_email
    ShareMailer.creation_confirmation(share).deliver_now
  end
end
