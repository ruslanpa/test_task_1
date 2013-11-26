class WelcomeController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create_task
    @task = Task.new(params[:task])
    @task.save
    respond_to() do |format|
      format.js
    end
  end
end
