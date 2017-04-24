class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks.find_incomplete :limit => 20 
  end
end
