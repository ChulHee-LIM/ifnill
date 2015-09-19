class MypageController < ApplicationController

    before_action :authenticate_user!, only:[:mypage, :modify]


	def mypage
		@user_info=User.find(current_user.id)
		@user_mybuckets=Bucket.where(:user_id => current_user.id)

		#@user_supportbuckets=@user_info.supports
	end


end
