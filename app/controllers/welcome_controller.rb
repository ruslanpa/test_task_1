class WelcomeController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create_task
    @task = Task.new(params[:task])
    if @task.save
      # render as js {create_task.js.erb}
      respond_to() do |format|
        format.js
      end
    else
      # redirect to main page if model doesn't create.
      redirect_to index
    end
  end
end
