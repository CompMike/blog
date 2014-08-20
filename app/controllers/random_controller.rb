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
  def matchgamehome

  end
  def matchgame
  	#prompt
  	#Create a match game that shows a screen of cards. On the next page it shows one card, the user must select the  cards positionas it was on the first page. This process repeats until the final card, then the correct score is shown.
  	#a hash of the cards and correct answers
  	card_answers = {
  		"pig" => "[1,1]",
  		"surfboard" => "[1,2]",
  		"rain" => "[1,3]",
  		"diamond" => "[2,1]",
  		"car" => "[2,2]",
  		"dog" => "[2,3]",
  		"boat" => "[3,1]",
  		"rainbow" => "[3,2]",
  		"bigfoot" => "[3,3]"
  	}
  	#an array of the current display of cards
  	cards = ["car", "boat", "surfboard","bigfoot","rainbow","pig","dog","diamond","rain"]
  	#Start the count for showing all cards
  	if session["matchgame_count"] == nil
  		session["matchgame_count"] = 0
  	end
  	#add one to the count on refresh
  	session["matchgame_count"] +=1
  	#set the user's choice to the card selected
  	user_choice = params["choice"]
  	previous_card = card_answers[cards[session["matchgame_count"]-1]]
 		if session["user_score"] == nil
  		session["user_score"] = 0
 		end
 		if user_choice == previous_card
 			session["user_score"] +=1
 		end
  	#reset the game after all parts are played
  	@current_card = cards[session["matchgame_count"]]
  	if session["matchgame_count"] >= 9
  		session["matchgame_count"] = 0
  		session["user_score"] = 0
  	end
  	@score = session["user_score"]
  	#Show the next page and ask the user to select a position, save that position.
  	#On the next refresh repeat this until all nine cards are guessed. While loop?
  end
end
