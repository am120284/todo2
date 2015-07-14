class TodoController < ApplicationController

	def index
		@todos  = Todo.where(done: false)
		@todone = Todo.where(done: true)
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)

		if @todo.save
			redirect_to todo_index_path, :notice => "Your todo item was created!"
		else
			render 'new'
		end
	end

	def update
		@todo = Todo.find(params[:id])

		if @todo.update_attribute(:done, true)
			redirect_to todo_index_path, :notice => "your Todo item was marked completed!"

		else
			redirect_to todo_index_path, :notice => "Unable to mark as complete"
		end
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		redirect_to todo_index_path, :notice => "Todo item was deleted"
	end

  private
	def todo_params
		params.require(:todo).permit(:name, :done)
	end
end
