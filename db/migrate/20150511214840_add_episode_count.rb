class AddEpisodeCount < ActiveRecord::Migration
  def change
    add_column :podcasts, :episode_count, :integer, :default => 0

    Podcast.reset_column_information

    Podcast.all.each do |p|
      Podcast.update_counters p.id, :episode_count => p.episodes.length
    end

    remove_column :podcasts, :episode_count
  end
end
