examples
trace: aBlock		"ContextPart trace: [3 factorial]"
	"This method uses the simulator to print calls and returned values in the Transcript."

	Transcript clear.
	^ self trace: aBlock on: Transcript