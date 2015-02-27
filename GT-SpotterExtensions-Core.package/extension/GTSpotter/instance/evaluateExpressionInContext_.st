evaluateExpressionInContext: aSpotterContext
	" only allow arithmethic selectors to be evaluated - otherwise this may have some severe side-effects "
	| result candidates |
	candidates := OrderedCollection new.
	" filter allowed selectors "
	(Number withAllSubclasses anySatisfy: [ :class |
		class selectors anySatisfy: [ :selector | 
			aSpotterContext textTrimmed includesSubstring: selector caseSensitive: true ] ]) ifFalse: [ ^ candidates ].
	" perform the selector "
	result := [ Compiler evaluate: aSpotterContext textTrimmed ] 
		on: Error 
		do: [ ^ candidates ].
	result isNumber ifFalse: [ ^ candidates ].
	aSpotterContext addItem: result.
	candidates add: result. 
	" if the result is not readable as float, append the float as well "
	(result isFraction and: [ result isInteger not ]) ifTrue: [
		aSpotterContext addItem: result asFloat.
		candidates add: result ].
	^ candidates