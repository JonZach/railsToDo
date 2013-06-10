class CreateListTasks < ActiveRecord::Migration
  def change
    create_table :list_tasks do |t|

      t.timestamps
    end
  end
end
