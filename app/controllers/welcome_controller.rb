class WelcomeController < ApplicationController
  def index
  	@posts = Project.where(published: true, feature: true).limit(6)
  	# @cycle = Cycle.where(publish: true)
  end
end
