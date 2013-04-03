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

#Hmmm, a better way might be to have the ai function simply call the input and display methods and then those methods can return their result.   

SIDES = 6

def ai() 
	print "function:ai()\n"
	display('init')
end

def display(screen)
	print "function:display()\n"
	if screen == 'init'
		print "Welcome to DICE. Are you ready to roll?\n"
	end
	return
end

ai


#Just need to figure out how to get the return value from display function...



