instanceVariableReadNodes
		^self variablesReadNodes select: [:each | each isInstance]