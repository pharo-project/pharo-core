buildSubnodesForSubclasses

	| topic |
	rootToBuildFrom subclasses isEmpty ifTrue: [^self].
	topicToBuild icon: Smalltalk ui icons bookIcon.
	topic := subclassesAsSeparateTopic 
				ifTrue: [topicToBuild addSubtopic: (HelpTopic named: 'Subclasses')]
				ifFalse: [topicToBuild ].
	rootToBuildFrom subclasses 
		do: [:subclass | topic addSubtopic: (self buildSubclassTopicFor: subclass)].
	topic sortSubtopicsByTitle.

	