class TasksController < ApplicationController
  def index
    @tasks = Task.find_incomplete :limit => 20 
  end
end
