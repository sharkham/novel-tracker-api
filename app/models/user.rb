# require_relative '../helpers/user_helpers'

class User < ApplicationRecord
  # extend UserHelpers
  has_many :novels
  has_secure_password

  validates :email, :name, presence: true
  # validates :name, presence: true
  # validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 5, wrong_length: "Password must be at least 5 characters." }, if: :password

  before_save :default_values

  def default_values
    self.admin ||= false # note self.status = 'P' if self.status.nil? might be safer (per @frontendbeauty)
  end

  def send_password_reset
    self.password_reset_token = generate_base64_token
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver_now
  end

  def password_token_valid?
    (self.password_reset_sent_at + 1.hour) > Time.zone.now
  end

  def reset_password(password)
    self.password_reset_token = nil
    self.password = password
    save!
  end

  private

  #move this into module at some point
  def generate_base64_token
    test = SecureRandom.urlsafe_base64
  end

end
