class PagesController < ApplicationController
  puts "in PagesController"
  def home
  	puts "came in home method"
  	@title = "Home"
  end

  def contact
  	puts "came in contact method"
  	@title = "Contact"
  end

  def about
	 puts "came in about method"
  	@title = "About"
  end

  def help
    puts "came in help method"
    @title = "Help"
  end

end
