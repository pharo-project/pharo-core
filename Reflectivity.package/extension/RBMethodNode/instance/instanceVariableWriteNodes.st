instanceVariableWriteNodes
		^self variablesWriteNodes select: [:each | each isInstance]