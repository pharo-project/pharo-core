testClassMatch

	self assert: 
		(MetacelloGoferPackage 
			packageFileName: 'JQuery-Core.gemstone' 
			matchesPackageName: 'JQuery-Core').
	self assert: 
		(MetacelloGoferPackage 
			packageFileName: 'JQuery-Core.gemstone-dkh.100' 
			matchesPackageName: 'JQuery-Core').
	self assert: 
		(MetacelloGoferPackage 
			packageFileName: 'Sport-2.031' 
			matchesPackageName: 'Sport').
