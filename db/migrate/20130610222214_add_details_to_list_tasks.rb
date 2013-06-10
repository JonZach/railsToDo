class AddDetailsToListTasks < ActiveRecord::Migration
  def change
    add_column :list_tasks, :list_id, :integer
    add_column :list_tasks, :task_id, :integer
  end
end
