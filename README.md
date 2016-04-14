#Rig remote control with dtmf codes 

Control a rig with remote dtmf codes.

Run rigctrld to enable hamlib comunication

rigctld -m 122 -r /dev/ttyS0 -s 9600 -d 3 -p -P


122 is Yaesu-857 adjust to your rig (rigctl --list)

Then run 

./dtmf.sh

to enable decoding and command run.


Commands are in command.sh file
