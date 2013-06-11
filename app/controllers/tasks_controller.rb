class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
    #     @task =Task.create( params[:task] )
    #     flash[:notice] = "Your task has been added to your ToDo List!"
    #     redirect_to :root
    # end
        @task = Task.create(title: params[:task][:title])
        if @task.save
          ListTask.create(list_id: params[:task][:list].to_i, task_id: Task.last.id)
          redirect_to :root
        else
          redirect_to :root
        end
    end

    def destroy
        @task = Task.find( params[:id] )
        @task.destroy
        redirect_to :root
  end

end