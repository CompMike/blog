class RandomController < ApplicationController
  def index
  		if session["count"] == nil
  			session["count"] = 0
  		end
  	if session["count"] == 0
  		session["sentence"] = ["test1","test2","test3"]
  		@output = session["sentence"].join(' ')
  	elsif session["count"] == 1
  		@output = session["sentence"][0]
  	elsif session["count"] == 2
  		@output = session["sentence"][1]
  	elsif session["count"] == 3
  		@output = session["sentence"][2]
  	else
  		@output = "done"
  	end
  	session["count"] +=1

  end
  def matchgame
  	#prompt
  	#Create a match game that shows a screen of cards. On the next page it shows one card, the user must show where that card was in the first page. This process repeats until the final card, then the correct score is shown.
  	card_answers = {
  		"pig" => [1,1],
  		"surfboard" => [1,2],
  		"rain" => [1,3],
  		"diamond" => [2,1],
  		"car" => [2,2],
  		"dog" => [2,3],
  		"boat" => [3,1],
  		"rainbow" => [3,2],
  		"bigfoot" => [3,3],
  	}
  	#Show our deck of cards in out of order
  	#Show the next page and ask the user to select a position, save that position.
  	#On the next refresh repeat this until all nine cards are guessed. While loop?
  end
  def matchgamequestion

  end
end
