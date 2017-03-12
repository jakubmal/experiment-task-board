class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :tab, foreign_key: true

      t.timestamps
    end
  end
end
