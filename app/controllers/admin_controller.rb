class AdminController < ApplicationController
  def index
    @total_ideas = Idea.count
  end
end
