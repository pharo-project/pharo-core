gtTopicIcon
	^self hasSubtopics 
			ifTrue: [ Smalltalk ui icons bookIcon ] 
	    	ifFalse: [ Smalltalk ui icons pageIcon ]