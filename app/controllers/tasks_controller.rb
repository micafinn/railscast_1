class TasksController < ApplicationController
  def incomplete
    @tasks = Task.find(:all, :conditions => ['complete = ?', false])
    @tasks
  end

  def last_incomplete
    @task = Task.find(:first, :conditions => ['complete = ?', false], :order => 'create_at Desc')
  end
end
