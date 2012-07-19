protocol
submitNewSlice
	| slice creator wc message |
	
	self tracker ifNil: [ ^ self ].
	self mcPackage ifNil: [ ^ self ].
	wc :=  self mcPackage workingCopy.
	wc modified ifFalse: [ ^ self ].
	
	(self viewChangesFor: wc)
		ifFalse: [ ^ self ].
	
	slice := MCSliceInfo new
				includedPackages: { wc };
				yourself.
				
	creator := IssueCreator new
					issue: issue;
					yourself.
	 
	self receiver openModal: creator openDialogWithSpec window.
	creator cancelled ifTrue: [ ^ self ].
	message := issue description content.
	issue description: (String streamContents: [:s |
								s << message.
								s cr; cr.
								s << '-------------------';cr.
								s<< 'Slice is in the inbox']).
	[ issue submitAsNewEntry ] on: ErrorWhileCreationException do: [ ^ self ].

	slice issueNumber: issue id asString.
	slice issueSummary: issue title.
	slice := slice makeSlice.
	
	self postNewSlice: slice message: message.
	
	issue
		status: PharoTrackerLabels reviewNeeded;
		submitStatusChange