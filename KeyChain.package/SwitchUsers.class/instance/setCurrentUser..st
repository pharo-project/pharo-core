private
setCurrentUser: anUser
	| mh |
	
	selectedUser contents: anUser.
	container removeAllMorphs.
	mh := anUser
		ifNil: [ ImageMorph new ]
		ifNotNil: [:user | user avatar copy ].
							
	container addMorph: mh fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: nil).