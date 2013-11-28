open
	self stagingArea packages
		ifEmpty: [ ^ self inform: 'No changes to commit' ].

	view ifNil: [ view := KomitterUI new
		model: self;
		yourself ].
	
	view openDialogWithSpec
		okAction: [ | valid |
			valid := view validate.
			valid
				ifTrue: [ self lastCommit: view komit ].
			valid ];
		cancelAction: [ 
			self lastCommit: nil.
			view cancel ];
		modalRelativeTo: World.