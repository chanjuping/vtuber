#!/bin/bash

# Setting timings for the stages.
# s\dl	sets the lower limit in the for loop
# s\du	sets the upper limit in the for loop
# m\d	sets the multiplier for the difference in the two numbers

# Set pause after introduction stage

s0=3

# Set timings for the first stage.

s1l=1
s1u=30
m1=0.8

# Introducing the person
echo "Loading the juping virtual avatar."
sleep $s0

loadscreen(){
# Stage 1
	for i in $(seq $s1l $s1u)
		do
			echo "Loading $i %. Sending an alarm from shell."
			sleep $m1
		done

# Stage 2
for i in {31..96}
do
	echo "Loading $i %. Heating the water."
	sleep 0.2
done

# Stage 3
for i in {97..99}
do
	echo "Loading $i %. Brewing tea."
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
