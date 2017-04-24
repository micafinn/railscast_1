class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @tasks = Task.find(:all, :conditions => ['project_id = ? AND complete = ?', @project.id, false])
  end
end
