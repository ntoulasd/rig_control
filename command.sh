#!/bin/bash

pttstatus=`/usr/bin/rigctl -m 2 -r localhost:4532 t | grep -o '[0-9]'`
if [ $pttstatus == 1 ]
then
case $1 in
	0)
	rigctl -m 2 -r localhost:4532 T 0
	espeak -v el+f1 "P T T  OFF"
	;;
esac
else
case $1 in
	1)
	espeak -v el+f1 "P T T  ON"
	rigctl -m 2 -r localhost:4532 T 1
	;;
	2)
	espeak -v el+f1 "Αρ Γιου 90"
	rigctl  -m 2 -r localhost:4532 F 439150000
	rigctl  -m 2 -r localhost:4532 M FM 0
	rigctl  -m 2 -r localhost:4532 O 7600000
	rigctl  -m 2 -r localhost:4532 R -
	rigctl  -m 2 -r localhost:4532 C 825
	;;
	3)
	espeak -v el+f1 "Αρ Γιου 72"
	rigctl  -m 2 -r localhost:4532 F 438700000
	rigctl  -m 2 -r localhost:4532 M FM 0
	rigctl  -m 2 -r localhost:4532 O 7600000
	rigctl  -m 2 -r localhost:4532 R -
	rigctl  -m 2 -r localhost:4532 C 770
	;;
	4)
	espeak -v el+f1 "10 μέτρα Εφ Εμ"
	rigctl  -m 2 -r localhost:4532 F 28245000
	rigctl  -m 2 -r localhost:4532 M FM 0
	;;
	5)
	espeak -v el+f1 "10 μέτρα Γιου Ες Μπι"
	rigctl  -m 2 -r localhost:4532 F 28245000
	rigctl  -m 2 -r localhost:4532 M USB 0
	;;
	6)
	espeak -v el+f1 "40 μέτρα Ελ Ες Μπι"
	rigctl  -m 2 -r localhost:4532 F 7185000
	rigctl  -m 2 -r localhost:4532 M LSB 0
	;;
	*) 
	espeak -v el+f1 "Μη αποθηκευμένη εντολή"
	;;
esac
fi
