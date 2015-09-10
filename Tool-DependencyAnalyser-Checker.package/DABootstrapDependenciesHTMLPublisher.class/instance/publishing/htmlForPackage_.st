htmlForPackage: aPackageName
	^ 	((self dependenciesToRemoveFor: aPackageName) includes: aPackageName) 
		ifTrue: [ self dangerLabel: aPackageName ]
		ifFalse: [ aPackageName ]