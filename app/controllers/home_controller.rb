class HomeController < ApplicationController
  def index
  	Sidekiq::Client.enqueue_to_in("default", Time.now, JobPostWorker)
  end
end
