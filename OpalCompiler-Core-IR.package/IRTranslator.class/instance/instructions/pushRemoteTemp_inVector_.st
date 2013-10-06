pushRemoteTemp: name inVector: tempVectorName
	| tempIndex tempVectorIndex tempVector |

	tempVector := tempVectorStack detect: [:each | each name = tempVectorName].
	tempVectorIndex := tempVector indexForVarNamed: name.
	tempIndex := self currentScope indexForVarNamed: tempVectorName.

	self doPending.
	gen pushRemoteTemp: tempVectorIndex inVectorAt: tempIndex.
	gen mapBytesTo: currentInstr. 
