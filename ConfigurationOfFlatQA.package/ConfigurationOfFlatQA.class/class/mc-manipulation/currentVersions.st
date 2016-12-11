currentVersions
	^ self rootConfNamesForLookup
		flatCollect: [ :className | 
			self currentVersionsOf:
				(self class environment at: className) ]