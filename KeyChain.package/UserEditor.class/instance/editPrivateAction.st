private
editPrivateAction

	user contents 
		ifNil: [ self ]
		ifNotNil: [:usr || editor kc |
			kc := usr keychain.
			kc unlock.
			editor := KeyChainViewer new
						keychain: kc;
						yourself.
			self window ifNotNil: [ self window openModal: editor openWithSpec window ]]