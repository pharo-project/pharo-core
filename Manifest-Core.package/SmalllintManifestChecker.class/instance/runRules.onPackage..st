run
runRules: aCompositeRule onPackage: aPackage

	" rule := RBCompositeLintRule new rules: aCollectionOfRule.	"
	rule := aCompositeRule.
	environment := (RBPackageEnvironment new rPackages: aPackage asRPackageSet).

	environment classesDo: [ :class |
		(class isTrait or: [class isManifest ]) ifFalse: [
			self checkClass: class.
			self checkMethodsForClass: class ] ]