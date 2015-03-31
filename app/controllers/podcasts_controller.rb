class PodcastsController < ApplicationController
	def index
		@podcasts = Podcast.all.order("created_at DESC")
	end

	def show
		@podcast = Podcast.find(params[:id])
		@episodes = Episode.where(podcast_id: @podcast).order("created_at DESC")
	end
end
