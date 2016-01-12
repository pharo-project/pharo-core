textualDiffIn: composite

	^ composite diff
			"when: [ self session isActive ];"
			display: [ 
				{self session actualResult gtDebuggerSUnitPrint. self session expectedResult gtDebuggerSUnitPrint} ]