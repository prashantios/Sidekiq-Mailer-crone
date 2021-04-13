class HomeController < ApplicationController
  def index
    users = UserPosition.new(position: "4").top_user
    puts(users[0].name)
    Sidekiq::Client.enqueue_to_in("default", Time.now, JobPostWorker)
  end
end
