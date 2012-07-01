events-processing
handleUnknownEvent: anEvent
	"An event of an unknown type was sent to the receiver. What shall we do?!"
	Beeper beep. 
	anEvent printString displayAt: 0@0.
	anEvent wasHandled: true.