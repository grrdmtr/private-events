class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :date
      t.string :datetime

      t.timestamps
    end
  end
end
