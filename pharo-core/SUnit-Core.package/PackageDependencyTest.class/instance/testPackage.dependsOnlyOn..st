test utility
testPackage: pkgName dependsOnlyOn: pkgList 
	"Ensure that the package with the given name depends only on the
	packages in pkgList"
	| classes pi deps |
	
	deps := self dependenciesOfPackageNamed: pkgName.

	pkgList
		do: [:pkg | 
			self
				assert: (deps includesKey: pkg).
			deps removeKey: pkg].

	self assert: deps isEmpty