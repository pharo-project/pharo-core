registerEventsForShout

	aboutToStyleHolder whenChangedDo: [ self changed: #getText ].
	behaviorHolder
		whenChangedDo: [ :class | 
			self changed: #getText.
			self changed: #classOrMetaClass: with: { class } ]