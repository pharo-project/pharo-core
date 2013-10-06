fileEntryAt: pathSegment ifAbsent: absentBlock
	^ PackageClassExtensionEntry
		package: package
		class: (package extendedClasses
			detect: [ :cls | cls theNonMetaClass name = pathSegment ]
			ifNone: [ ^ absentBlock value ]) theNonMetaClass