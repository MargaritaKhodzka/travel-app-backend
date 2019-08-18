class AddVisitedToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :visited, :boolean, default: false
  end
end
