class ProjectsController < ApplicationController
	def index
		@posts = Project.where(published: true)
	end

	# GET /projects/1
	def show
		@post = Project.find(params[:id])
	end

end
