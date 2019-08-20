class AddBucketListToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :bucket_list, :boolean, default: false
  end
end
