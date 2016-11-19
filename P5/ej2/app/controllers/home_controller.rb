class HomeController < ApplicationController
	 before_action only: [:show, :edit, :update, :destroy]

	def index
    	@custom = APP_CUSTOM
  	end

end
