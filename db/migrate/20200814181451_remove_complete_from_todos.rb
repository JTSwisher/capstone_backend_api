class RemoveCompleteFromTodos < ActiveRecord::Migration[6.0]
  def change
    remove_column :todos, :complete, :boolean
  end
end
