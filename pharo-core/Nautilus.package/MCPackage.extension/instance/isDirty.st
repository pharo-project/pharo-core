*Nautilus
isDirty
	| modifiedPackages  |
	
	modifiedPackages := MCWorkingCopy allManagers select: [ :each | each modified ].
	^ modifiedPackages anySatisfy: [:wc | wc package = self ]