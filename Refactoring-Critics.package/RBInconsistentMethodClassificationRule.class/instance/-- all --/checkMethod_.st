checkMethod: aMethod 
	| superClass superProtocol ownerProtocol |
	aMethod methodClass superclass isNil ifFalse: [
		superClass := aMethod methodClass superclass whichClassIncludesSelector: aMethod selector.
		superClass isNil ifFalse: [
			superProtocol := superClass whichCategoryIncludesSelector: aMethod selector.
			ownerProtocol := aMethod methodClass whichCategoryIncludesSelector: aMethod selector.
			(superProtocol isNil or: [ superProtocol isEmpty or: [ superProtocol first = $* or: [ ownerProtocol isNil or: [ ownerProtocol isEmpty or: [ ownerProtocol first = $* ] ] ] ] ]) ifFalse: [ 
				superProtocol = ownerProtocol ifFalse: [
					result
						addClass: superClass
							selector: aMethod selector
							into: superProtocol;
						addClass: aMethod methodClass
							selector: aMethod selector
							into: superProtocol ] ] ] ]