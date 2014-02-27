class User < ActiveRecord::Base
  has_secure_password

  has_many :albums
  has_many :photos, through: :albums

  mount_uploader :photo, PhotoUploader
  
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :password, presence: true
end



