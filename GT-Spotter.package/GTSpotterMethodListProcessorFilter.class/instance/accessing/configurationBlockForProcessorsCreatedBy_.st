configurationBlockForProcessorsCreatedBy: aMethod
	
	^ configurationBlocks at: aMethod name ifAbsent: [ self nullConfigurationBlock ]