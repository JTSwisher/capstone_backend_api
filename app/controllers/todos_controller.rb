class TodosController < ApplicationController

    def create
        todo = Todo.new(todo_params)
        if todo.save 
            render json: todo, only: [:id, :title, :body, :complete, :user_id]
        else 
            render json: {error: "Error creating todo."}
        end
    end 

    private

    def todo_params
        params.require(:todo).permit(:title, :body, :complete, :user_id)
    end 

end 