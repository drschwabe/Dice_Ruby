=begin 
#########
This is a practice Ruby script.  To simulate... a DICE. 
What can a dice do?  Well. It can roll. 
What properties are of it?  It has 6 sides (typically, though some DnD ones have more)
What happens when dice rolled?  It lands!  One one of the six sides.
The dice then shows the result.  And the roll is complete.  
So we have a begin state (let's assume begin state is in your hand).
A rolling state.  Rolls typically take a few seconds. 
And the final result state.  In which the roll is complete, and the result is displayed for us all to see. 
#########	
=end

#ai 
##accepts 1 parameter.  Tells the function whether or not it was called by the input function or the display function. 

#display
##renders stuff to the screen

#ai (we loop through it)

#input
##accepts user input


SIDES = 6

def ai() 
	#puts "function:ai()"
	startScreen = display('start') 
	readyAnswer = input()	
	if readyAnswer == "r" || readyAnswer == "R" 
		secondScreen = display('roll')
	else 
		secondScreen = display('noRoll')
	end
end



def display(screen)
	#puts "function:display()"
	if screen == 'start'
		puts "\nWelcome to DICE. Are you ready to roll?\n(R)oll   (E)xit"
	elsif screen == 'roll'
		puts "Okay, about to roll!"
	elsif screen == 'noRoll'
		puts "why u no wanna play dice?\n\n"
	end
	return
end



def input()
	#puts "function:input()"
	userInput = gets
	return userInput.chomp
end

ai