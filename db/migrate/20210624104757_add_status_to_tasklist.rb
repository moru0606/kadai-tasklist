class AddStatusToTasklist < ActiveRecord::Migration[6.1]
  def change
    add_column :tasklists, :status, :string
    # drop_table :Add status to tasklist
  end
end
