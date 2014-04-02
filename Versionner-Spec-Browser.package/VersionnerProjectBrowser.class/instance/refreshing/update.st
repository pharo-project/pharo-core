update
	"Update the project details according to selected configuration and version."

	versionList selectedItem
		ifNil: [ projectPanel project: nil ]
		ifNotNilDo: [ :selectedVersion | 
			project := MTProject 
						newFromVersion: selectedVersion version
						inConfiguration: configuration configurationClass.
			projectPanel project: project.					
			repository text: project repository.
			versionDescription text: project version description.
			versionCommitMessage text: 'Commited: ' , project version author , ' - ' , project version timestamp ]