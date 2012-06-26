utilities
methodsWithInitials: targetInitials
	"Based on a do-it contributed to the Squeak mailing list by Goran Hultgen:
 Browse methods whose initials (in the time-stamp, as logged to disk) match the given initials.
 Print out the complete time-stamp table to the Transcript.
 Answer a list of (initials -> count) associations.

CAUTION: It may take several minutes for this to complete."

	"Time millisecondsToRun: [SystemNavigation default methodsWithInitials: 'bf'] "

	| initials timeStamp  allSubmitters |
	initials := ''.
	timeStamp := ''.
	allSubmitters := Bag new.
	self browseAllSelect:
			[:cm |
				timeStamp := cm timeStamp.
				initials := timeStamp isEmpty
					ifTrue:
						['']
					ifFalse:
						[timeStamp substrings first].
				initials := initials isEmpty
					ifTrue:
						['<no time stamp>']
					ifFalse:
						[initials first isDigit
							ifTrue:
								['<date>']
							ifFalse:
								[initials]].
				allSubmitters add: initials.
				(initials = targetInitials)]
		name: ('Methods with initials ', targetInitials)
		autoSelect: nil.

	allSubmitters sortedCounts do: [:elem | Transcript cr; show: elem asString].
	^ allSubmitters
