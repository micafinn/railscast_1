class ProjectsController < ApplicationController
  layout :user_layout

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks.find_incomplete :limit => 20
  end

  protected

  def user_layout
    if current_user.admin? #can just say => if true, in order to avoid an error of this undefined method
      "admin"
    else
      "application"
    end
  end
end
