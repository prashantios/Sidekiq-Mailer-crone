class UserMailer < ApplicationMailer
	# default from: 'prashant.berylsystems@gmai.com'

	def job_post
	  @email = params[:email]
    @jd = 'This is mail for the possition of ROR developer'
    attachments['free_book.pdf'] = File.read('/Users/prashant/Desktop/GS-GIT-160221-0611.pdf')
    mail(to: 'prashant.berylsystems@gmail.com', subject: 'Opening for ROR developer')
	end
end
