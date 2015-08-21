install

	Nautilus pluginClasses
		detect: [ :each | 
			each first = self ]
		ifFound: [ ^ self ]. 

	Nautilus pluginClasses:
		(Nautilus pluginClasses copyWith:
			{ self . self defaultPosition })