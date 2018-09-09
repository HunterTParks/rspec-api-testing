class AddGroupIdToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :group_id, :integer
  end
end
