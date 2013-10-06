unloadMonticello
	"self unloadMonticello"

	self breakDependents.
	Smalltalk globals
		at: #MCWorkingCopy
		ifPresent: [ :wc | 
			wc allInstances
				do: [ :ea | 
					Versions at: ea package name put: ea currentVersionInfo asDictionary.
					ea breakDependents.
					SystemAnnouncer uniqueInstance unsubscribe: ea.
					]
				displayingProgress: 'Saving version info...' ].	"keep things simple and don't unload any class extensions"
	(Class superclassOrder: (PackageInfo named: 'Monticello') classes) reverseDo: [ :ea | ea removeFromSystem ].
	self registerForFileList