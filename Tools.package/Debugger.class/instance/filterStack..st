private
filterStack: stack
	"if the global settings are switched of simply return the full stack"
	self class filterCommonMessageSends ifFalse: [ ^ stack ].
	"ask if we should keep each context or not"
	^ stack select: [ :context|
		[self shouldDisplayContext: context]
			on: Exception
			do: [ :e| 
				Transcript show: 'Exception occured while filtering context:', context asString; cr;
					show: '------------------------------------------------------'; cr;
					show: e asString; cr;
					show: '------------------------------------------------------'; cr.
				false]]