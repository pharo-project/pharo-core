debuggersForContext: aContext excluding: aDebugger 

	"Ungly check to make sure the debugger will work until everything is in the image"
	(Smalltalk tools respondsTo: #debuggersForContext:excluding:) 
		ifTrue: [ ^ (Smalltalk tools debuggersForContext: aContext excluding: aDebugger class)]
		ifFalse: [ ^ OrderedCollection new ]