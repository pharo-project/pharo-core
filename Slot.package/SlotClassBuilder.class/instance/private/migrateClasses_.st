migrateClasses: classModification.
	
	client
		migrateClasses: oldClasses asArray
		to: newClasses asArray
		using: classModification instanceModification.