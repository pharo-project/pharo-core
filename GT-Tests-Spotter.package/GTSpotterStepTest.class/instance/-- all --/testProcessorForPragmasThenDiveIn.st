testProcessorForPragmasThenDiveIn
	self testProcessorForPragmas.
	
	self assertDiveIn.

	self assertProcessorByTitle: 'Pragmas'.
	self assertProcessorNotEmpty.
	self assertProcessorIncludesAll: (self pragmas: #spotterOrder:).
		
	self assertProcessorByTitle: 'Senders'.
	self assertProcessorNotEmpty.
	self assertProcessorIncludesAll: (self senders: #spotterOrder:).
	
	self assertSearch: 'spotterForClassesFor:'.
	
	self assertProcessorByTitle: 'Pragmas'.
	self assertProcessorNotEmpty.
	self assertProcessorIncludes: (self pragma: #spotterOrder: of: (GTSpotter >> #spotterForClassesFor:)).
	
	self assertProcessorByTitle: 'Senders'.
	self assertProcessorNotEmpty.
	self assertProcessorIncludes: (GTSpotter >> #spotterForClassesFor:).
	
	self assertSearch: 'spotterForF'.
	
	self assertProcessorByTitle: 'Senders'.
	self assertProcessorNotEmpty.
	self assertProcessorIncludes: (GTSpotter >> #spotterForFilesFor:).
	self assertProcessorIncludes: (FileReference >> #spotterForFilesFor:).
	
	self assertDiveOut.
	
	self assert: currentStep context text = 'spotterOrder:'