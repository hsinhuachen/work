class WelcomeController < ApplicationController
  def index
  	@posts = Project.where(published: true)
  end
end
