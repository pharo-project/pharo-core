image startup
boot: bootingFromDisk during: aBlock

	bootingFromDisk ifTrue: [ 
		
		" we should replace currently active UI manager with non-interactive one during 
		processing startup list "
		Default := StartupUIManager replacing: self.
	].

	aBlock ensure: [ Default := self ].

	self onSnapshot: bootingFromDisk