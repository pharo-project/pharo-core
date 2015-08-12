icon
	"Either return the icon for the given topic"
	
	item icon notNil ifTrue: [^item icon].
	^item hasSubtopics
		ifTrue: [ Smalltalk ui icons bookIcon ]
		ifFalse: [ Smalltalk ui icons pageIcon ]
