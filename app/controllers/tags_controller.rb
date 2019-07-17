class TagsController < ApplicationController
	def index
		@tags = Tag.all()
	end

	def show
		@post = Tag.find(params[:id])
	end
end
