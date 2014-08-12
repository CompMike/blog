class AboutController < ApplicationController
  def index
  end
  def pics
  	@image_data = {"A picture of a sea" => ['north_sea_storm.jpg','http://www.google.com'],"Another picture of a sea" =>['the_sea.jpg','http://www.google.com'],"The last picture of a sea" => ['Corey_Arnold_The_North_Sea_2011_1927_412.jpg','http://www.google.com']}
  end
end
