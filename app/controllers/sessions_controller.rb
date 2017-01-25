class SessionsController < ApplicationController
  def new
  	@title = "Sign in"
  end

  def create
 
  	user = User.authenticate(params[:session][:email],	params[:session][:password])
  	puts "user = #{user}"
	if user.nil?
	# Create an error message and re-render the signin form.
		puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "create new sessions nnnillll"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"

	  	flash.now[:error] = "Invalid email/password combination."
	  	@title = "Sign in"
	  	render 'new'
	else
	# Sign the user in and redirect to the user's show page.
		puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "create new sessions  ssuuucceeesss"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"
	  	puts "*************"

	  	#sign_in user
		redirect_to user
	end

  end

  def destroy
  	
  end

end
