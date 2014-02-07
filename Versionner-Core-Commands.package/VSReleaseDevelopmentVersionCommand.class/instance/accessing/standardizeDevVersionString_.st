standardizeDevVersionString: aDevVersionString
	aDevVersionString := aDevVersionString copyReplaceAll: 'baseline-' with: ''.
	aDevVersionString  :=  aDevVersionString copyReplaceAll: '-baseline' with: ''.
	aDevVersionString  :=  aDevVersionString copyReplaceAll: 'baseline' with: ''.
	^ aDevVersionString , '-baseline'