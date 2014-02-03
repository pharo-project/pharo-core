allManifestClasses

	^ Smalltalk allClasses select: [:class | class isManifest]