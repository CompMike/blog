class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :add_cookie
  before_action :set_user_name
  before_action :set_background
  def add_cookie
  	#get the current date and time
  	#create a string version of date and time
  	current_dt = Time.now.strftime("%B %d, %Y, %A %I:%M:%S %p")
  	#store the current date and time in the session, if it's our first visit
  	if session['first_visit'] == nil
  		session['first_visit'] = current_dt
  	end
  	#pull the date and time from the session and make it avaialble to the view.
  	@first_visit = session['first_visit']
  end
  def set_user_name
  	@user_name = session['user_name']
  end
  def set_background
  	@backgroundcolor = session["color"]
  end
end
