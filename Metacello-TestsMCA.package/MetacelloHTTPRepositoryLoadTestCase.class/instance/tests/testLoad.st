testLoad

	self enabled ifFalse: [ ^self ].
	(self project version: 'default') load.
	self assert: (self hasPackage: 'Bogus'); assertClass: #BogusA.
	self assert: (self hasPackage: 'BogusExt'); assertClass: #BogusA selector: #isFake.
