class ProjectsController < ApplicationController
	def index
		if params[:name]
			# @posts = Project.category(params[:category])
			@pagy, @posts = pagy(Project.category(params[:name]))
		else
			#@posts = Project.where(published: true)
			@pagy, @posts = pagy(Project.where(published: true))
		end

		@tags = Tag.all()
	end

	# GET /projects/1
	def show
		@post = Project.find(params[:id])
	end
end
