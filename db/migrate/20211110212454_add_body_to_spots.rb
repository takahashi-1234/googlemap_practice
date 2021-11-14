class AddBodyToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :body, :string
  end
end
