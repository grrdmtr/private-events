class RemovDateTimeFromEvents < ActiveRecord::Migration[7.0]
  def up
    remove_column :events, :datetime
  end
end
