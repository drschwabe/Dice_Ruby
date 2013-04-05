###### DICE v1.0 (Ruby) ######


#Define the variables: 
SIDES = 6

def Ai() 

	#Define actions: 
	def roll() #Randomly picks a number between one and 6.
		computation = rand(SIDES) + 1
		return String (computation)
	end

	#Ai starts up. 
	startScreen = Display('start')  #Ai calls Display (toss1), Display does its thing and defers back to Ai (toss2).
	readyAnswer = Input() #Ai calls Input (toss3), Input tosses data back to Ai (toss4 - the first cycle is complete!).

	#Starting another cycle. 

	#Ai figures out the result of Input and acts accordingly.
	if readyAnswer == "r" || readyAnswer == "R" 
		secondScreen = Display('roll') #Ai calls Display (toss1) and it defaults back (toss2). 

		#Ai performs the dice roll to determine which side it landed on...
		$diceResult = roll(); 

		#We need no input!  Cycle starts over and toss to display (toss1): 
		Display($diceResult); 
		#The end. 

	else 
		secondScreen = Display('noRoll')
	end
end


def Display(screen)
	#puts "function:display()"
	if screen == 'start'
		puts "\nWelcome to DICE. Are you ready to roll?\n(R)oll   (E)xit"
	elsif screen == 'roll'
		puts "Okay, about to roll!\n\n"
	elsif screen == 'noRoll'
		puts "why u no wanna play dice?\n\n"
	elsif screen == $diceResult
		puts "You rolled a " + $diceResult + "\n\n"
	end
	return
end


def Input()
	#puts "function:input()"
	userInput = gets
	return userInput.chomp
end

Ai()