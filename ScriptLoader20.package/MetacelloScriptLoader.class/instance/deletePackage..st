mc public utils
deletePackage: aString

	| toRemove | 
	toRemove := (self allManagers asSortedCollection:
		[ :a :b | a package name <= b package name ]) detect: [:each | each package name = aString].
	MCWorkingCopy registry removeKey: toRemove package.