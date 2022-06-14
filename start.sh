#!/bin/bash

# Setting timings for the stages.
# s\dl	sets the lower limit in the for loop
# s\du	sets the upper limit in the for loop
# m\d	sets the multiplier for the difference in the two numbers

# Set pause after introduction stage

s0=3

# Set timings for the 1st stage.

s1l=1
s1u=30
m1=0.8

# Set timings for the 2nd stage.

s2l=31
s2u=50
m2=0.2

# Set timings for the 3rd stage.

s3l=51
s3u=60
m3=0.4

# Set timings for the 4th stage.

s4l=61
s4u=77
m4=0.9

# Set timings for the 5th stage.

s5l=78
s5u=88
m5=0.5

# Set timings for the 6th stage.

s6l=89
s6u=99
m6=0.7

# Introducing the person
echo "Loading the chanjuping virtual avatar."
sleep $s0


loadscreen(){
# Stage 1
for i in $(seq $s1l $s1u)
	do
		echo "Loading $i %. Sending an alarm from shell."
		sleep $m1
	done

# Stage 2
for i in $(seq $s2l $s2u)
	do
		echo "Loading $i %. Boiling water."
		sleep $m2
	done

# Stage 3
for i in $(seq $s3l $s3u)
	do
		echo "Loading $i %. Adding tea to teapot."
		sleep $m3
	done

# Stage 4
for i in $(seq $s4l $s4u)
	do
		echo "Loading $i %. Brewing tea."
		sleep $m4
	done

# Stage 5
for i in $(seq $s5l $s5u)
	do
		echo "Loading $i %. Serving tea."
		sleep $m5
	done

# Stage 6
for i in $(seq $s6l $s6u)
	do
		echo "Loading $i %. Drinking tea."
		sleep $m6
	done

# Final Stage	
echo "Loaded 100 %. Attempting to start digital avatar."
sleep 5
}

loadscreen


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
