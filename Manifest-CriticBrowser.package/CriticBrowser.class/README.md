I am a browser for the SmallLint Critics

example: 
| rule |
rule :=  RBCompositeLintRule filterRules.
environment := (RBPackageEnvironment new packages: {PackageInfo named: 'Manifest'}).

(CriticBrowser runRule: rule onEnvironment: environment)
	openWithSpec.
	
