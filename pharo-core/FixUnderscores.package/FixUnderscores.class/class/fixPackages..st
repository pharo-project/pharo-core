fixing
fixPackages: packageNames
	"FixUnderscores fixPackages: #('FixUnderscores' 'Bert')"

	| failed |
	failed := OrderedCollection new.

	packageNames
		do: [:pkgName | (PackageInfo named: pkgName) methods
			do: [:mRef | mRef fixUnderscores ifFalse: [failed add: mRef]] 
			displayingProgress: pkgName]
		displayingProgress: 'Fixing ...'.

	failed isEmpty ifFalse: [
		Smalltalk tools messageList 
			openMessageList: failed
			name: 'These methods with literal underscores were not fixed'
			autoSelect: '_'].