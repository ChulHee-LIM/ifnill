class MypageController < ApplicationController

    before_action :authenticate_user!, only:[:mypage, :modify]


	def mypage
		
	end

	def modify

	end


end
