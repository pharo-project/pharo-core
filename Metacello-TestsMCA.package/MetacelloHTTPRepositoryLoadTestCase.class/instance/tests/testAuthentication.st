testAuthentication
	"test _should_ fail because you are not authorized to access the repository...
	 to test with your own private repository copy the package BogusConfiguration from
	 http://seaside.gemstone.com/ss/bogus to your repository and edit the #baselineAuthentication:
	 appropriately. "

	self enabled ifFalse: [ ^self ].
	(self project version: 'authentication') load.
	self assert: (self hasPackage: 'Bogus'); assertClass: #BogusA.
	self assert: (self hasPackage: 'BogusExt'); assertClass: #BogusA selector: #isFake.
