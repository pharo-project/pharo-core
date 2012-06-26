initialization
registerEventsForShout
	aboutToStyleHolder whenChangedDo: [ self changed: #getText ].
	behaviorHolder
		whenChangedDo: [ :class | 
			self widget ifNotNil: [ :w | w classOrMetaClass: class ].
			self changed: #getText ]