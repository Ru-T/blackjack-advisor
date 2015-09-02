# Create a program which will take information about a current blackjack hand and return the optimal action for the player to take.
# Your goal for this assignment is to store the set of optimal moves for a 1 deck blackjack hand, ask the user for his or her current hand
# (and the dealer's up card), then give the user his or her optimal move.
# For normal mode, use the default settings that occur on this page when you load it (1 deck, etc).
# Your program must use a hash within a hash (at least) to solve this problem. The prompts to the user should go something like this:

#Please enter your first card:
#(user enters 9)
#Please enter your second card:
#(user enters 9)
#Please enter the dealer's card:
#(user enters 7)
#Your optimal move is to stand.
#You can either allow the user to enter J, Q, or K for Jack, Queen, or King, respectively, or you can expect the user to enter a 10 for any of these. However, the user should have to enter A for an Ace.

#It is up to you to use the Googlez to determine what makes a hand "Soft" or "Hard."

soft_hash = Hash.new
#soft_hash[dealer] = Hash.new
soft_hash[dealer][total] = action

#soft_hash = {2..3 => {13..16 => "hit", 17 => "double hit", 18 => "stand"},
#            4..6 => {13..18 => "double hit", 19..21 => "stand"},
#            7..11 => {13..17 => "hit", 18..21 => "stand"}}

soft_hash = {2 => {13 => "hit", 17 => "double hit", 18 => "stand"},
            4 => {13 => "double hit", 19 => "stand"},
            7 => {13 => "hit", 18 => "stand"}}

puts soft_hash[2][17]
