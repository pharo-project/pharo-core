changeSetName: aChangeSetName

	changeSet := CodeImporter fileNamed: aChangeSetName.
	changeSet parseChunks.
	changes items: changeSet codeDeclarations.