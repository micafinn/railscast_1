class TasksController < ApplicationController
  def index
    @tasks = Task.find_incomplete
  end
end
