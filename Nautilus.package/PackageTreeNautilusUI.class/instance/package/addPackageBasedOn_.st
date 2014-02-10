addPackageBasedOn: aPackage
	[ ^ super addPackageBasedOn: aPackage ]
	on: RPackageConflictError do: [ :e | UIManager default inform: e messageText ].
	
	^ nil