class UsersController < ApplicationController
  def new
	@user = User.new
	@title = "Sign up"
  end

  def show
	@user = User.find(params[:id])
	@title = @user.name
  end

  def create
	@user = User.new(params[:user])
		if @user.save
		# Handle a successful save.

			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("sign up sssuuccceesssssfffuuuulllll");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("sign up fail");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			puts("*********************");
			@title = "Sign up"
			render 'new'
		end
	end


end
