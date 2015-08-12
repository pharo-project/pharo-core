build

	topicToBuild := (HelpTopic named: rootToBuildFrom name).
	topicToBuild icon: Smalltalk ui icons pageIcon.
	topicToBuild contents: rootToBuildFrom comment.
	
	addMethods ifTrue: [ self buildSubnodesForMethods ].
	addSubclasses	 ifTrue: [ self buildSubnodesForSubclasses ].
	 