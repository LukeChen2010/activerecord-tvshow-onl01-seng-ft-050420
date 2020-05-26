class AddSeasonToShows < ActiveRecord::Migrate[5.2]
  def change
    add_column :shows, :favorite_food, :string
  end
end