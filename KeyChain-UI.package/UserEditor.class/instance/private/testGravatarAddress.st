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
				fullFrame: LayoutFrame identity].