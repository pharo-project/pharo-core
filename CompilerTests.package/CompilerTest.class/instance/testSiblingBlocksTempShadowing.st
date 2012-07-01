test shadowing
testSiblingBlocksTempShadowing

	interactive := true.
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp [:temp | ]. [:temp | ]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [self fail.
						^nil]).



	
					

