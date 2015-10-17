categoryRemoved: anAnnouncement
	self withCleanupDo: [ 
		examples keys do: [ :className |
			(Smalltalk classNamed: className) ifNil: [ 
				(examples removeKey: className ifAbsent: [ nil ]) ifNotNil: [ :dict | 
					dict do: [ :example | 
						[ example detachFromSystem ] on: Error do: [ " ignore " ] ] ] ] ].
		
		self checkForMissingDependencies.
		self checkForMissingClasses ]