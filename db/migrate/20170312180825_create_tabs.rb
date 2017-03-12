class CreateTabs < ActiveRecord::Migration[5.0]
  def change
    create_table :tabs do |t|
      t.string :name
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
