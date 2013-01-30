instance creation
openAsMorphOn: anObject withLabel: aLabel 
	"(Inspector openAsMorphOn: SystemOrganization withLabel: 'Test') openInWorld"

	^UIManager default 
		openInspector: self asMorphOn: anObject withLabel: aLabel