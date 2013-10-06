testSiblingBlocksTempShadowing

	interactive := true.
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp [:temp | ]. [:temp | ]'
		in: MockForCompilation
		classified: nil
		notifying: nil
		ifFail: [self fail.
						^nil]).



	
					

