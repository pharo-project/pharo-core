navigating
relativeTo: landmark
	"Answer a new path relative to landmark."
	
	"parent/child/grandChild relativeTo: parent returns child/grandChild
	(FSFilesystem disk / 'griffle' / 'plonk' / 'nurp') relativeTo: (FSFilesystem disk / 'griffle') 
	returns plonk/nurp"

	^ landmark makeRelative: self