setCurrentUser: anUser

	| mh |
	selectedUser contents: anUser.
	container removeAllMorphs.
	mh := anUser
		ifNil: [ ImageMorph new ]
		ifNotNil: [:user | user avatar copy ].
							
	container addMorph: mh fullFrame: LayoutFrame identity