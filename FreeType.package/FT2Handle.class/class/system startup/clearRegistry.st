clearRegistry

	self registry
		do: [:each | each beNull ];
		removeAll.