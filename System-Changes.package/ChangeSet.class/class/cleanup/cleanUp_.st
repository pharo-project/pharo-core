cleanUp: aggressive
	"Only delete change sets when being aggressive"

	aggressive ifTrue: [ 
			ChangeSet removeChangeSetsNamedSuchThat: [ :each | true ].
			ChangeSet resetCurrentToNewUnnamedChangeSet.].