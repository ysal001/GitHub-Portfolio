import random

print("Weclome to the Number Guessing Game\n" \
"You have 7 guesses to find the correct number. Let's Start!")

low = int(input("Enter the Lower Bound: "))
high = int(input('Enter the Upper Bound: '))

print(f"\nYou have 7 trys to guess the number between {low} and {high}. " \
      "Let's begin")

num = random.randint(low, high)

chances = 7
attempt = 0

while attempt < chances:
    attempt += 1

    guess = int(input("Enter your guess: "))

    if guess == num:
        print(f"Correct! The number is {num}. You guessed the correct number in" \
              "{attempt} attempts.")
        break
    elif attempt >= chances and guess != num:
        print(f"Sorry! The number was {num}. Better luck next time.")
    elif guess > num:
        print("Too high! Try again.")
    elif guess < num:
        print("Too low!. Try again.")