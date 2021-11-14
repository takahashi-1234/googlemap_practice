class AddCourtTypeToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :court_type, :string
    add_column :spots, :operation, :string
  end
end
