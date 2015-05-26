helpTopic
	^ helpTopicCache ifNil: [ helpTopicCache := rootTopic asHelpTopic ]