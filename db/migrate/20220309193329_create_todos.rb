class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :titles
      t.text :description
      t.datetime :due_date
      t.integer :prioriti

      t.timestamps
    end
  end
end
