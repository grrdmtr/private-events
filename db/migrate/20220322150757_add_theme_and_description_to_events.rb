class AddThemeAndDescriptionToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :theme, :string
    add_column :events, :description, :text
  end
end
