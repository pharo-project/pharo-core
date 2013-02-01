initialize
registerUsersManagerEvents

	usersManager
		whenChangedDo: [ :uM || size |
			size := uM users size.
			users items: (uM users collect: [ :e | DropListItem named: e username do: [ self setCurrentUser: e ] ]).
			users setSelectedItem: uM currentUser username.
			add state: size isZero ].
		