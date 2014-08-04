#!/usr/bin/perl
# This scipt plays the old number guessing game with the user

# Make up a number from 1 to 100
$number = int(rand(100)) + 1;
# Set guess count limits
$guess_count = 1;
$max_guess_count = 10;

# Instruct the user
print("I've picked a number between 1 and 100.\n");
print("You have 10 tries to guess it.\n");

# Loop until the user guesses correctly
while ($guess_count <= $max_guess_count)
{
     # Issue the challenge
     print("Guess #$guess_count: guess the number or type \"I give up\":\n");
     # Read the guess
     $guess = <>;
     chomp($guess);
     # Does the user give-up?
     if (lc($guess) eq "i give up")
     {
          print("The number I was thinking of was $number\n");
          exit();
     }

     # No, check the guess
     if ($guess > $number) { print "Man, your too high, try climbing down!\n"; }
     elsif ($guess < $number) { print "Dude, Pull-up your too damn low!\n"; }
     else 
     {
          print "Hooray, you got it!\n";
          exit();
     }
     # Increment the guess count
     $guess_count = $guess_count + 1;
}

print "Sorry, you're out of guesses. The number I was thinking of was $number\n";
