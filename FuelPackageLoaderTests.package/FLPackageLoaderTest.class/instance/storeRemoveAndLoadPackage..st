running
storeRemoveAndLoadPackage: aFLPackage
	| loadedPackage |

	self streamFactory writeStreamDo: [:aStream |
		FLPackageStore new storePackage: aFLPackage on: aStream ].

	"Traits are not correctly cleaned with the classFactory. Therefore, we do the full #tearDown"
	self tearDown.
	self stubPackageInfo extensionMethods do: [ :method | method methodClass removeSelectorSilently: method selector ].
	self assert: self stubPackageInfo classes isEmpty.
	self assert: self stubPackageInfo extensionMethods isEmpty.

	self streamFactory readStreamDo: [:aStream |
		SystemAnnouncer uniqueInstance doSilently: [
			loadedPackage := FLPackageLoader new loadFrom: aStream.
		].
		classFactory createdClasses: loadedPackage behaviors ].
	
	^ loadedPackage
	