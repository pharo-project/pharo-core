setUp
	super setUp.
	testPackage := (RPackage named: #'Renraku-Nuclear-Site') register.
	testClass := Object
		subclass: 'NuclearSiteTestingClass'
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: testPackage name.
	testMethod := testClass >> (testClass compile: 'nuclearSiteTestingMethod ^ self').
		