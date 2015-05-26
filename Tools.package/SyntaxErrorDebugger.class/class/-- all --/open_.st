open: aSyntaxError 
	"Answer a standard system view whose model is an instance of me."
	<primitive: 19>
	"Simulation guard"
	self buildMorphicViewOn: aSyntaxError.
	UIManager default spawnNewProcessIfThisIsUI: Processor activeProcess.
	^ Processor activeProcess suspend