class AboutController < ApplicationController
  def index
  end
  def find_categories(model,output)
    output = model.all
    chosen_category = params['category']
    if chosen_category == "all"
      output = Pics.all
    else
      output = Pics.where(category: chosen_category).all
    end
    return output
  end
  def pics
  	@image_data = {"A picture of a sea" => ['north_sea_storm.jpg','http://www.google.com'],"Another picture of a sea" =>['the_sea.jpg','http://www.google.com'],"The last picture of a sea" => ['Corey_Arnold_The_North_Sea_2011_1927_412.jpg','http://www.google.com']}
  	@image_data = Pics.all
  	chosen_category = params['category']
  	if chosen_category == "all"
  		@image_data = Pics.all
  	else
  		@image_data = Pics.where(category: chosen_category).all
  	end
    #find all available categories
    @categories = Pics.uniq.pluck(:category)
    # find_categories(Pics,@image_data)
    # @categories = Pics.uniq.pluck(:category)
  end
  def portfolio
  	chosen_category = params['category']
  	if chosen_category == "all"
  		@projects = Project.all
  	else
  		@projects = Project.where(category: chosen_category).all
  	end
    #find all available categories
    @categories = Project.uniq.pluck(:category)
  end

end
