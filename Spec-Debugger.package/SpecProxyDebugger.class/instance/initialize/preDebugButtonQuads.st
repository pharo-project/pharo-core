preDebugButtonQuads
	| buttons |
	self isPostMortem 
		ifTrue: [ ^ self postMortemPreDebugButtonQuads ].
	^ {
		{'Proceed' translated.	#proceed. 	#blue. 	'Continue execution' translated}.
		{'Abandon' translated.	#abandon. 	#black.	'Abandon this execution by closing this window' translated}.
		{'Debug'    		translated.		#debug.		#red. 	'Bring up a debugger' translated}.
		{'Spec Debug' translated. #spawnSpecDebugger. #red. 'Bring up the Spec Debugger' translated}
	}