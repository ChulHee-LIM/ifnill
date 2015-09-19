class Bucket < ActiveRecord::Base

	serialize :images, Array

	mount_uploader :thumbnail, BucketImageUploader

	belongs_to :user

	has_many :items
	has_many :supports
	has_many :replies

	validates :name, :presence => true
	validates :intro_simple, :presence => true
	validates :intro_detail, :presence => true
	validates :finish_date, :presence => true, format: { with: /\A\d+-\d+-\d+\z/}
	validates :start_date, :presence => true, format: { with: /\A\d+-\d+-\d+\z/}


	def self.change_bucket_state
		timeNow = Time.now.in_time_zone('Seoul').to_date
		Bucket.all.each do |b|
		time_diff_components = Time.diff(b.finish_date, timeNow, '%d')[:day]
		  if time_diff_components == 0
		    if b.state == 0
		      b.update(:state => 1)
		    end 
		  end
		end
	end

end
