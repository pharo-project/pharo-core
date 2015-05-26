accept

	self okToChange ifFalse: [ ^self ].
	self pickedChanges do: [ :change | RBRefactoryChangeManager instance performChange: change content ].
	window value delete