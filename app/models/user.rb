class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :email, presence: true
  validates :name, presence: true

  after_create :send_user_mailer
  after_update :update_user_mailer
  after_destroy :destroy_user_mailer

  def send_user_mailer
    UserMailer.send_mailer(self).deliver
  end
  def update_user_mailer
    UserMailer.update_mailer(self).deliver
  end

  def destroy_user_mailer
    UserMailer.destroy_mailer(self).deliver
  end
end
