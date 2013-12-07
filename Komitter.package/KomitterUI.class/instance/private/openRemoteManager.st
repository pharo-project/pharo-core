openRemoteManager
	| view |
	
	view := RemotesManager new packages: (tree roots collect: [ :e | self remoteNodeFor: e ]).
	view openDialogWithSpec
		centered;
		modalRelativeTo: self window