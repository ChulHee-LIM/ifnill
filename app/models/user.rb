class User < ActiveRecord::Base

	mount_uploader :profile, UserImageUploader

	has_many :buckets
	has_many :supports
	has_many :items, :through => :support
	has_many :replies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
