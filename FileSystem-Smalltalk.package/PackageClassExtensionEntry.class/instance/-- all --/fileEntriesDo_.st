fileEntriesDo: aBlock
	
	(package extensionSelectorsForClass: clazz) isEmpty 
		ifFalse: [ aBlock value: (PackageClassExtensionOrganizer class: clazz package: package) ].
	
	(package extensionSelectorsForClass: clazz theMetaClass) isEmpty
		ifFalse: [ aBlock value:  (PackageClassExtensionOrganizer class: clazz theMetaClass package: package) ].