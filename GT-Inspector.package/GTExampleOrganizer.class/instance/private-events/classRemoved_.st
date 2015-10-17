classRemoved: anAnnouncement
	self withCleanupDo: [ 
		(examples removeKey: anAnnouncement classRemoved theNonMetaClass name ifAbsent: [ nil ])
			ifNotNil: [ :dict | 
				dict do: [ :example |
					[ example detachFromSystem ] on: Error do: [ " ignore " ] ].
			
				self checkForMissingDependencies.
				self checkForMissingClasses ] ]