class JobPostWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    UserMailer.with(email: 'prashant.berylsystems@gmai.com').job_post.deliver_now
    puts('message sent')
  end
end
