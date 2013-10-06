privCleanChangeSets

	(ChangeSet allChangeSets reject: [:cs | cs = ChangeSet current]) 
		do: [:cs| ChangeSet removeChangeSet: cs ].

	ChangeSet current clear.
	ChangeSet current name: 'Unnamed1'.