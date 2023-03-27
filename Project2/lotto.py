import random

picks = list(range(1,69))
random.shuffle(picks)
pickedNum = picks[:6]
pickedNum.sort()

print("Your Lotto Picks For Today Are: ", pickedNum)
    