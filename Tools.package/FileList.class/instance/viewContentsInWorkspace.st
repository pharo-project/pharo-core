own services
viewContentsInWorkspace
	"View the contents of my selected file in a new workspace"
	
	| aString |
	
	self reference streamWritable: false do: [ :stream|
		aString := stream setConverterForCode contentsOfEntireFile ].
	
	UIManager default edit: aString label: 'Workspace from ', self reference basename