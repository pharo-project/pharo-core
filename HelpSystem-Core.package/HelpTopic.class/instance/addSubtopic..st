accessing
addSubtopic: aTopic
	"Adds the given topic to the receivers collection of subtopics"
	
	self subtopics add: aTopic.
	^aTopic