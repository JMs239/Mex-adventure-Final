#!/bin/bash 
echo
echo "  ___________________________________________________________________  "
echo " |                                                                   | "
echo " |                                                                   | "
echo " |                   Welcome traveler to MEX-ADVENTURE!!!            | "
echo " |                                                                   | "
echo " |                                                                   | "
echo "  -------------------------------------------------------------------  "
echo
function begin() {
echo "  Your adventure start in a river front a big tree...  "
echo "  You look around and you see two interesting thing, a basket on the river and a really big sword on the tree...  "
echo -e "  Where you gonna go first? 

      To the river for the basket or you will go to the tree to get the sword?  "

echo -e " What you gonna do?  

Go to the river to see the basket (a)

Go to the tree to take the sword (b)

Enter your choice (a/b)--> \c"
echo
read answer
if [ $answer = "a" -o $answer = "A" ]
then 
echo -e "\n You walk to the basket and saw an curious item."
potion
else
echo -e "\n You get a really cool sword, but..."
sword
fi
}
# potion function
potion() {
echo -e "\n The item is a potion...\n"
echo
echo -e "\n You will drink the potion? (y/n) --> \c"
read answer
if [ $answer = "y" -o $answer = "Y" ]
then 
echo -e "\n The potion was hot souce, you get diarrea..."
echo
echo
echo -e "   GAME OVER!!!   "
exit
else
echo
echo -e "  You notice that the potion was hot souce so you drop it and after think a while you go back to home."
echo
echo
echo
echo
echo -e "   GAME OVER!!!     "
echo
echo
echo
begin
fi
}
# sword function
sword() {
echo
echo -e " The sword is so heavy and you saw some goblins that want to kill you, so you have two options..."
echo
echo -e "  Use the sword to fight against the goblins or run away and jump to the river to escape."
echo
echo -e "  Are you going to fight? (y/n) --> \c"
echo
read answer
if [ $answer = "y" -o  $answer = "Y" ]
then 
echo -e " You kill the goblins and get a good loot but you are so tired because the sword took all your energy, so you go to a cave to rest..."
cave
else
echo
echo -e "  You jump to the river but the goblins kill you with their bows when you cross to a safe place... You Died!"
echo 
echo
echo
echo -e "   GAME OVER!!!   "
echo
echo  
echo
begin
fi
}
# cave function
cave() { 
echo -e "   The next day you wake up because you heard a very loud noise deep in the cave..."
echo
echo -e "   Will you walk deep into the cave to see why there is so much noise? (y/n) --> \c"
echo
read answer
if [ $answer = "y" -o $answer = "Y" ]
then 
echo
echo -e "   After walk a while you find a big box with a platinum armor and a power ring."
echo
choice
else
echo
echo "   You go back to home because you are so tired."
echo
echo
echo
echo -e "   GAME OVER!!!   "
echo
echo
echo
exit
fi
}
choice() {
echo
echo -e "   You only can choose one, so what is your election?...
Platinum armor (a)
Power ring (b)
Enter your choice (a/b) --> \c"
echo
read answer
if [ $answer = "a" -o $answer = "A" ]
then 
echo -e "   The armor gives a boost to your strenght so you can now use the sword with more agility."
echo
echo -e " But..."
echo
echo -e "   You see something big that entry to the cave so you try to escape."
echo
dragon1
else
echo
echo -e "   With the ring you can insta-kill any monster but each time that you use the ring, the ring take a part of your life until you died."
echo
echo -e "   You walk for a while but you see something big that entry to the cave so you try to escape."
echo
echo
echo -e "  You hide behind a rock and you saw a big green dragon."
echo
dragon2
fi
}
# dragon functions
dragon1() {
echo
echo -e "  When you tried to get out of the cave a dragon block the cave entrance..."
echo
echo -e "  Fight? (y/n) --> \c"
read answer 
if [ $answer = "y" -o $answer = "Y" ]
then 
echo
echo -e "  With the armor and the sword you are so powerfull and you are more faster than the dragon, but the dragon has a hard skin more than the iron, but after hour of fight you defeat the dragon..."
echo
echo
end 
else 
echo
echo -e "  You hide behind a rock. After a while you tried to escape but the dragon sees you and poisons you with his breath... You Died!"
echo
echo
echo
echo -e "   GAME OVER!!!   "
echo
echo
echo
dragon1
fi 
}
dragon2() {
echo
echo -e "  You use the ring to kill the dragon, but the dragon has too many life so you need to use the ring more times. After use the ring 5 times the dragon died but you too... You Died!"
echo
echo
echo
echo
echo
cave
}
end() {
echo
echo -e "   After defeat the dragon you walk to the exit, but the dead body of the dragon expels poisonous gas so you have to run left or right:"
echo
echo -e "   Right or left?
Right (r)
Left (l)
Enter your choice (r/l) --> \c"
read answer
if [ $answer = "r" -o $answer = "R" ]
then 
echo
echo -e "   In the right side of the cave a big spider bites you and after 2 minutes you died..."
echo
echo
echo
echo -e "   GAME OVER!!!   "
echo
echo
echo
end
else
echo -e "   In the left side you find a tunel where you escape... You survive!"
echo
echo
echo
echo -e " CONGRATULATIONS!!!"
echo
echo
echo
fi
}
begin