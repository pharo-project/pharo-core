fixing
fixLFPackages: packageNames
	"FixUnderscores fixLFPackages: #('FixUnderscores')"

	| failed |
	failed := OrderedCollection new.

	packageNames
		do: [:pkgName | (PackageInfo named: pkgName) methods
			do: [:mRef | mRef fixLFInvisible ifFalse: [failed add: mRef]] 
			displayingProgress: pkgName]
		displayingProgress: 'Fixing ...'.

	failed isEmpty ifFalse: [
		Smalltalk tools messageList 
			openMessageList: failed
			name: 'These methods with lf were not fixed'
			autoSelect: Character lf asString].