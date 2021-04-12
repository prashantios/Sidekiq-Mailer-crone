class UserMailer < ApplicationMailer
	# default from: 'prashant.berylsystems@gmai.com'

	def job_post
	  @email = params[:email]
    @jd = 'This is mail for the possition of ROR developer'
    mail(to: 'prashant.berylsystems@gmail.com', subject: 'Opening for ROR developer')
	end
end
