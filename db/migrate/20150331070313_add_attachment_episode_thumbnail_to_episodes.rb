class AddAttachmentEpisodeThumbnailToEpisodes < ActiveRecord::Migration
  def self.up
    change_table :episodes do |t|
      t.attachment :episode_thumbnail
    end
  end

  def self.down
    remove_attachment :episodes, :episode_thumbnail
  end
end
