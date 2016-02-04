class AddLevelToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :level, :integer
  end
end
