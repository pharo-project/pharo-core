delayDuration
	"2015.03.01 Possibly deprecate this in future. Leave for now in case of unknown sender outside image."
	
	"The ifNil: ... ifNil: is a hack to get the CImonkey through the code transition"
	^millisecondDelayDuration ifNil: [ delayDuration ifNil: [ 0]].