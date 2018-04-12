class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, :presence => true
  validates :email, :uniqueness => true




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
devise :omniauthable, :omniauth_providers => [:linkedin]
  has_one :profile
  has_many :opportunities

  def self.from_omniauth(auth)
      self.where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
    end





end
