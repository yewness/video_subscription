class RemoveLevelFromVideos < ActiveRecord::Migration
  def change
    remove_column :videos, :level, :integer
  end
end
