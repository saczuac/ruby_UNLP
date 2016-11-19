class PoliteController < ApplicationController
	before_action only: [:show, :edit, :update, :destroy]
	
	attr_accessor :salutes

	def initialize
		self.salutes = ['hola','crack','como','estas','hoy?']
	end

	def index
    	@salute = self.salutes[rand(0..4)]
  	end

end
