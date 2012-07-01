accessing
subtopics 
	"Returns the receivers list of subtopics"
	
	subtopics isNil ifTrue: [subtopics := OrderedCollection new].
	^subtopics