#Import marvel information from install library
from marvel import Marvel

#Access marvel library information from marvel api with public and private keys
marvel = Marvel(PUBLIC_KEY='795c6f4c55dd9fa0492cff66f0d3f038', PRIVATE_KEY='9f4c65211269438da0d1692341cc90098f41c0a4')

#While loop designed to allow user another attempt is they misspell character name
while True:

    #Receive input from user, user input is stored in variable "char"
    print('What character would you like a description? ')
    char = input()

    #All of the information about the marvel characters is accessed through "marvel.characters", this information will be stored in characters
    characters = marvel.characters

    #The information of all of the selectable characters will be in sel_characters 
    sel_character = characters.all(name=char)['data']['results']

    #if statment for loop
    if len(sel_character) == 0:
        print('Check your spelling')
        continue

    #A description about the selected character is displayed
    print(sel_character[0]['description'])
    break