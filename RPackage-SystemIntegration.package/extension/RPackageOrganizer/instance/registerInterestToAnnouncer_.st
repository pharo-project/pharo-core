registerInterestToAnnouncer: anAnnouncer	
	"There should be only one"
	anAnnouncer unsubscribe: self.
	
	anAnnouncer weak
		on: CategoryAdded send: #systemCategoryAddedActionFrom: to: self;
		on: CategoryRemoved send: #systemCategoryRemovedActionFrom: to: self;
		on: CategoryRenamed send: #systemCategoryRenamedActionFrom: to: self;
		on:  ClassAdded send: #systemClassAddedActionFrom: to: self;
		on:  ClassRecategorized send: #systemClassRecategorizedActionFrom: to: self;
		on:  ClassRemoved send: #systemClassRemovedActionFrom: to: self;
		on:  ClassRenamed send: #systemClassRenamedActionFrom: to: self;
		on:  ClassReorganized send: #systemClassReorganizedActionFrom: to: self;
		on:  MethodAdded send: #systemMethodAddedActionFrom: to: self;
		on:  MethodModified send: #systemMethodModifiedActionFrom: to: self;
		on:  MethodRecategorized send: #systemMethodRecategorizedActionFrom: to: self;
		on:  MethodRemoved send: #systemMethodRemovedActionFrom: to: self;
		on:  ProtocolAdded send: #systemProtocolAddedActionFrom: to: self;
		on:  ProtocolRemoved send: #systemProtocolRemovedActionFrom: to: self.
		
	self flag: #hack. "for decoupling MC"
	#MCWorkingCopy asClassIfPresent: [ 
		anAnnouncer weak
			on: (Smalltalk globals at: #MCWorkingCopyCreated) 
				send: #updateAfterNewMCPackageRegistred: 
				to: self;
			on: (Smalltalk globals at: #MCWorkingCopyDeleted) 
				send: #updateAfterNewMCPackageUnregistred: 
				to: self	].