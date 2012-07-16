loading
loadRelatedPackages
	| packages testPackages|
	packages := self slice version dependencies collect: [ :dep| dep package name ].
	
	self flag: 'should also add the packages of all subclasses...'.
	
	"manually try to figure out weirdly TEST- prefixed packages"
	testPackages := OrderedCollection new.
	packages do: [ :package|
		self flag: 'there must be a cleaner way to do this...'.
		testPackages addAll: (SystemNavigation default environment organization categoriesMatching: 'Tests-', package, '*')].
	
	testPackages addAll: packages.
	
	^ testPackages asArray