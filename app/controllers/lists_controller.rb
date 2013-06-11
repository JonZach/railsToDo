class ListsController < ApplicationController
    def index
        @lists = List.all
        @list = List.new
        @task = Task.new
    end

    def new
        @list = List.new
    end

    def create
        @list =List.create( params[:list] )
        redirect_to :root
    end

    def destroy
        @list = List.find( params[:id] )
        # tasks = @list.tasks.all
        @list.destroy
        tasks.each do |task|
          task.destroy
        end
        redirect_to :root
    end

    def edit
    end

    def update
    end

end
