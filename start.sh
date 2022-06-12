#!/bin/bash
echo "Loading the juping virtual avatar."

loadscreen(){
for i in {1..30}
do
	echo "Loading $i %. Sending an alarm from shell."
	sleep 0.8
done

# 13 seconds
for i in {31..96}
do
	echo "Loading $i %. Seating the avatar."
	sleep 0.2
done

# 6 seconds
for i in {97..99}
do
	echo "Loading $i %. Checking for errors."
	sleep 3
done
}

loadscreen

echo "Loaded 100 %. Attempting to start avatar."
sleep 5

echo "Avatar is ready. Press "y" to continue, "x" to exit."
while :
do
	echo "y - continue"
	echo "x - exit"
	read -n 1 -t 10 a
	printf "\n"
	case $a in
		y* )	echo "Hello World!"; break;;
		x* )	echo "Goodbye"; break;;
		*  )	echo "No correct input after 10 seconds. Restarting"; loadscreen;;
	esac
done
