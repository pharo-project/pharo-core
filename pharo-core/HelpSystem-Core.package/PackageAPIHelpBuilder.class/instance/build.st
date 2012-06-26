building
build 
	|pTopic|
	topicToBuild := (HelpTopic named: rootToBuildFrom bookName).
	rootToBuildFrom packages do: [:package|
		pTopic := HelpTopic named: package.
		topicToBuild addSubtopic: pTopic.
		self buildPackageTopic: pTopic.
		
	]
