RBBadMessageRule identifies the use of messages that often pinpoint to not well designed aspects, often costly execution or other inadequate practices. This smell arises when methods send messages that perform low level things. You might want to limit the number of such messages in your application. 
	Here is the list of messages that are checked:
	
	become: isKindOf: changeClassToThatOf: respondsTo: isMemberOf: performMethod: performMethod:arguments: performMethod:with: performMethod:with:with: performMethod:with:with:with: allOwners instVarAt: instVarAt:put: nextInstance instVarsInclude: nextObject halt caseOf: caseOf:otherwise: caseError isThisEverCalled isThisEverCalled: becomeForward: instVarNamed: instVarNamed:put:  someObject primitiveChangeClassTo: 
	
	Messages such as isKindOf: can signify a lack of polymorphism. 