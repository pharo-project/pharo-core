registerUsersEvents

	users
		whenSelectedItemChanged: [ :item |
			(usersManager contents isNil or: [ item isNil ])
				ifTrue: [ remove enabled: false ]
				ifFalse: [ | um isRoot uMUsers |
					um := usersManager contents.
					uMUsers := um users.
					isRoot := um currentUser canEditUser.
					remove enabled: 	((item label ~= um currentUser username) and: 
										[(item notNil and: 
										[ isRoot and: 
										[ uMUsers size >1 ]]) and: 
										[ ((uMUsers detect: [:e | e username = item label ]) canEditUser
												ifTrue: [ (uMUsers reject: [:e | e username = item label ]) anySatisfy: [:e | e canEditUser ]]
												ifFalse: [ true ])]])].
			edit enabled: item notNil ]