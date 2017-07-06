class UserLogin < ActiveRecord::Base

  attr_accessor :password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # attr_accessible doesnt apply anymore in Rails4.x
  # attr_accessible :email, :password, :password_confirmation 

  validates :name, presence: true
  validates :email, presence: true, 
                    length: { minimum: 2 },
                    format: { :with => VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password,  presence: true, 
                        confirmation: true,
                        length: { minimum: 2 }

  validates :password_confirmation,  presence: true

  before_save :encrypt_password

  def self.authenticate email, passwd
    u = find_by_email email
    u && u.authenticated?(passwd) ? u : nil
  end

  def authenticated?(passwd)
    encrypted = encrypt(passwd)
    password_digest === encrypted
  end

  private

    def encrypt passwd
      require 'digest/sha1'
      Digest::SHA1.hexdigest("--#{salt}--#{passwd}--")
    end

    def encrypt_password
      return if password.blank?
      if new_record?
        self.salt = Digest::SHA1.hexdigest("--#{Time.now}--#{email}--")
      end
      Rails.logger.debug '==================================='
      Rails.logger.debug 'encrypt_password'
      self.password_digest = encrypt password
      self.email = email.downcase
      Rails.logger.debug "self.password: " + self.password_digest.to_s
      Rails.logger.debug "self.email: " + self.email.to_s
    end
end
