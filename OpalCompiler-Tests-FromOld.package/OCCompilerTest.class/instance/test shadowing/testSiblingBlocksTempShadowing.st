testSiblingBlocksTempShadowing

	interactive := true.
	self initializeErrorMessage.

	(OpalCompiler new
		compile: 'temp [:temp | ]. [:temp | ]'
		in: MockForCompilation
		classified: nil
		notifying: nil
		ifFail: [self fail.
						^nil]).
				



	
					

