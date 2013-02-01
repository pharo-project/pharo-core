I am a browser for the SmallLint Critics

Example: 


| rule environment |
rule :=  RBExcessiveArgumentsRule new.
environment := (RBPackageEnvironment new packages: {RPackageSet named: 'Manifest-Core'}).

(CriticBrowser openOnRule: rule onEnvironment: environment)
	
