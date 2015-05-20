checkMethod: aMethod
	aMethod referencedClasses
		detect: [ :class |
		 class methods anySatisfy: #isAbstract ]
		ifFound: [ :class |
			result
				addMethod: aMethod;
				addSearchString: class name ]