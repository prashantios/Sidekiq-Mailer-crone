class UserPosition
  def initialize(params)
	  @position = params[:position]
	end
	
	def top_user
	  return User.where("position = #{@position}")
	end
end