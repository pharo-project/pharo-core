display
displayProgress: titleString from: minVal to: maxVal during: workBlock
	"Display titleString as a caption over a progress bar while workBlock is evaluated."
	^ProgressInitiationException 
		display: titleString
		at: Display center 
		from: minVal 
		to: maxVal 
		during: workBlock