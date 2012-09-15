*RPackage-SystemIntegration
registerInterestToAnnouncer: anAnnouncer	
	"There should be only one"
	anAnnouncer unsubscribe: self.
	
	" Announcer initialize"
	self flag: #todo. "Fiinish monticello integration (commented below)"
	
	anAnnouncer weak
		on: CategoryAdded send: #systemCategoryAddedActionFrom: to: self;
		on: CategoryRemoved send: #systemCategoryRemovedActionFrom: to: self;
		on: CategoryRenamed send: #systemCategoryRenamedActionFrom: to: self;
		on:  ClassAdded send: #systemClassAddedActionFrom: to: self;
		on:  ClassCommented do: [:ann | 
				 "Only re-emit public corresponding announcement"
			"Not yet implemented?"
			];
		on:  ClassRecategorized send: #systemClassRecategorizedActionFrom: to: self;
		on:  ClassRemoved send: #systemClassRemovedActionFrom: to: self;
		on:  ClassRenamed send: #systemClassRenamedActionFrom: to: self;
		on:  ClassReorganized send: #systemClassReorganizedActionFrom: to: self;
		on:  MethodAdded send: #systemMethodAddedActionFrom: to: self;
		on:  MethodModified send: #systemMethodModifiedActionFrom: to: self;
		on:  MethodRecategorized send: #systemMethodRecategorizedActionFrom: to: self;
		on:  MethodRemoved send: #systemMethodRemovedActionFrom: to: self;
		on:  ProtocolAdded send: #systemProtocolAddedActionFrom: to: self;
		on:  ProtocolRemoved send: #systemProtocolRemovedActionFrom: to: self;
		"Monticello announcements (old protocol)"
"		on: MCVersionCreated send: #update: to: self;
		on: MCPackageModified send: #update: to: self;"
		on: MCWorkingCopyCreated send: #updateAfterNewMCPackageRegistred: to: self;
		on: MCWorkingCopyDeleted send: #updateAfterNewMCPackageUnregistred: to: self	
		