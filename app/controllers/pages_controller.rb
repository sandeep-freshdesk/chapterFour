class PagesController < ApplicationController
  puts "in PagesController"
  def home
  	puts "came in home method"
  	@title = "Home"
  end

  def contact
  	puts "came in contact method"
  	@title = "Contact"
    puts "**************************"
    puts "**************************"
    puts "**************************"
    puts @contact
    puts @contact_url
    puts @contact_path
    puts "**************************"
    puts "**************************"
    puts "**************************"
    puts "**************************"
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
