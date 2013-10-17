registerUserChanges
	user
		whenChangedDo: [ :usr | 
			self window ifNotNil: [ :w | w title: self title ].
			gravatarAddress enabled: usr notNil.
			testGravatar enabled: usr notNil.
			userName enabled: usr notNil.
			setPassword enabled: usr notNil.
			editPermissions enabled: usr notNil.
			editPrivate enabled: usr notNil.
			editPublic enabled: usr notNil.
			usr
				ifNotNil: [ 
					userName text: user contents username.
					container removeAllMorphs.
					container addMorph: usr avatar copy fullFrame: LayoutFrame identity.
					originalEmail := usr userNameFor: #gravatar.
					originalEmail ifNotNil: [ gravatarAddress text: originalEmail ]]]