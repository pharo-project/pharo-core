running
checkMethod: aContext 
	| superClass superProtocol ownerProtocol |
	aContext selectedClass superclass isNil ifFalse: [
		superClass := aContext selectedClass superclass whichClassIncludesSelector: aContext selector.
		superClass isNil ifFalse: [
			superProtocol := superClass whichCategoryIncludesSelector: aContext selector.
			ownerProtocol := aContext selectedClass whichCategoryIncludesSelector: aContext selector.
			(superProtocol isNil or: [ superProtocol isEmpty or: [ superProtocol first = $* or: [ ownerProtocol isNil or: [ ownerProtocol isEmpty or: [ ownerProtocol first = $* ] ] ] ] ]) ifFalse: [ 
				superProtocol = ownerProtocol ifFalse: [
					result
						addClass: superClass
							selector: aContext selector
							into: superProtocol;
						addClass: aContext selectedClass
							selector: aContext selector
							into: superProtocol ] ] ] ]