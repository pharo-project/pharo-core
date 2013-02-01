private
testGravatarAddress
	| email newAvatar |
	email := gravatarAddress getText.
	newAvatar := [ user contents retrieveGravatarFromMail: email ]
						on: Error
						do: [ nil ].
	newAvatar
		ifNil:[ gravatarAddress morph flash ]
		ifNotNil: [ 
			container removeAllMorphs.
			container 
				addMorph: newAvatar 
				fullFrame: (LayoutFrame 
								fractions: (0@0 corner: 1@1)
								offsets: nil )].