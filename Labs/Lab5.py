import random

compNum = random.randint(1, 10)
guess = input("Guess a number between 1 and 10. ")
guess = int(guess)

while guess != compNum:
    print("incorrect")
    if guess > compNum:
	    print("Too high")   
    elif guess < compNum:
	    print("Too low")
    guess = int(input("guess again "))
if guess == compNum:
	    print("Correct!")