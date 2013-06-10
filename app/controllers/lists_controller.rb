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
        @list = List.create( params:[list] )
        redirect_to :root
    end

    def destroy
    end

    def edit
    end

    def update
    end

end
