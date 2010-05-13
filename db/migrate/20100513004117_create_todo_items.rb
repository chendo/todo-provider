class CreateTodoItems < ActiveRecord::Migration
  def self.up
    create_table :todo_items do |t|
      t.string :name
      t.boolean :complete
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :todo_items
  end
end
