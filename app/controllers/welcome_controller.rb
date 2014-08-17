class WelcomeController < ApplicationController
  def set_name
  	@user_name = params["user_name"]
  	session["user_name"] = @user_name
  end
end
