class User < ApplicationRecord
  attr_accessor :login
  mount_uploader :photo, ImageUploader 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, 
            presence: true, 
            uniqueness: { case_sensitive: false }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def self.find_first_by_auth_conditions(warden_conditions)

    conditions = warden_conditions.dup

    if login = conditions.delete(:login)
      where(conditions.to_hash).where("lower(username) = :value OR lower(email) = :value",
         value: login.downcase).first
    else
      where(conditions.to_hash).first
    end
  end
end
