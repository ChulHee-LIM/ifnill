class Bucket < ActiveRecord::Base

	serialize :images, Array

	mount_uploader :thumbnail, BucketImageUploader

	belongs_to :user

	has_many :items
	has_many :supports
	has_many :replies

end
