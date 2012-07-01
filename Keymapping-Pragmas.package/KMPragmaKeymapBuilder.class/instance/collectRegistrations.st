registrations handling
collectRegistrations
	self pragmaCollector
		do: [:prg | prg methodClass theNonMetaClass 
				perform: prg selector
				with: (KMBuilder perform: prg keyword withArguments: prg arguments )].
