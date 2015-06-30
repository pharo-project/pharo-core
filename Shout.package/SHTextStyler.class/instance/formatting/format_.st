format: aText 
	| tree |
	self terminateBackgroundStylingProcess.
	RBConfigurableFormatter formatOnDisplay
		ifTrue: [ 
			tree := RBParser parseMethod: aText onError: [ :msg :pos | ^ aText ].
			^ tree formattedCode ]
		ifFalse: [ ^ aText ]