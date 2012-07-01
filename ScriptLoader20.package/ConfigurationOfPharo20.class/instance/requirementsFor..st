private accessing
requirementsFor: aString
	^(HazelKernelAnalyzer forPackageNamed: aString) analyze dependentPackages 
		collect: #packageName as: Set. 
	