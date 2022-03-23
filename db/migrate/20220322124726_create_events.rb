class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :theme
      t.text :description
      t.references :creator, null: false, references: :users, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
