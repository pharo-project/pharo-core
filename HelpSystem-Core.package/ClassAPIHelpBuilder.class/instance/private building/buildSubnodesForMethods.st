buildSubnodesForMethods

	| instanceSide classSide |
	instanceSide := HelpTopic named: 'Instance side'.
	classSide := HelpTopic named: 'Class side'.
	topicToBuild icon: (HelpIcons iconNamed: #bookIcon).
	topicToBuild 
		addSubtopic: instanceSide;
		addSubtopic: classSide.
	self buildMethodTopicsOn: instanceSide for: rootToBuildFrom.	
	self buildMethodTopicsOn: classSide for: rootToBuildFrom class.	