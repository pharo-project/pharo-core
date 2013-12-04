commitSlice: aSlice
	| versions slice view workingCopy version |

	slice := MCSliceInfo new.
	view := KomitSliceUI new.
	view openDialogWithSpec
		centered;
		modalRelativeTo: World.

	view cancelled ifTrue: [ ^ self ].
	
	slice issueNumber: view issueNumberText.
	slice issueSummary: view titleText.
	
	versions := self createVersionFor: aSlice.
	slice includedPackages: versions.
		
	workingCopy := slice makeSlice.
	version := workingCopy 
		newVersionWithMessage: aSlice message
		in: aSlice remote remote.
		
	Cursor wait showWhile: [
		[ self
			storeVersion: version for: aSlice;
			storeDependencies: version for: aSlice
		] ensure: [ (MCVersionInspector new version: version) show ] 
	]