class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task =Task.create( params[:task] )
        flash[:notice] = "Your task has been added to your ToDo List!"
        redirect_to :root
    end
end