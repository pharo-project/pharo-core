private
title

	^ keychain contents
		ifNil: [ 'Keychain editor' ]
		ifNotNil: [:kc | kc username
							ifNil: [ 'Keychain editor' ]
							ifNotNil: [:usr |  'Editing ', usr ,'''s keychain' ]]