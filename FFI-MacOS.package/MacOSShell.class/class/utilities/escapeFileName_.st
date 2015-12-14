escapeFileName: aFileName

	"Try to make the argument suitable for use in 'system'.  
	 Just the simple stuff - backlash-prefix for obvious problems - quotes and white space."

	^ String streamContents: [ : stream |
		aFileName do: [ : char |
			('''" 	()[]{}$&' includes: char) ifTrue: [
				stream nextPut: $\
			].
			stream nextPut: char.
		]].