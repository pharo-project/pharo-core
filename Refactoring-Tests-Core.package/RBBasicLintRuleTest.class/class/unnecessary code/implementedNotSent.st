implementedNotSent
	| detector |
	detector := self new.
	detector name: 'Methods implemented but not sent'.
	detector methodBlock: 
			[:context :result | 
			(context uses: context selector)
				ifFalse: [result addClass: context selectedClass selector: context selector]].
	^detector