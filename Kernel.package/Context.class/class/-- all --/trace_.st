trace: aBlock		
	"This method uses the simulator to print calls and returned values in the Transcript."

	Transcript clear.
	^ self trace: aBlock on: Transcript
	
	"Context trace: [3 factorial]"