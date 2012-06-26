ansi protocol
second
	"Answer a number that represents the number of complete seconds in the receiver's time part, 
	after the number of complete minutes has been removed."
 
 	^ (seconds rem: SecondsInMinute)