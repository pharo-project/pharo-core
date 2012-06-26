misc
useSelector: incomingSelector orGetSelectorAndSendQuery: querySelector to: queryPerformer
	"If incomingSelector is not nil, use it, else obtain a selector from user type-in.   Using the determined selector, send the query to the performer provided."

	| aSelector |
	incomingSelector
		ifNotNil:
			[queryPerformer perform: querySelector with: incomingSelector]
		ifNil:
			[aSelector :=UIManager default request: 'Type selector:' initialAnswer: 'flag:'.
			aSelector isEmptyOrNil ifFalse:
				[(Symbol hasInterned: aSelector ifTrue:
					[:aSymbol | queryPerformer perform: querySelector with: aSymbol])
					ifFalse:
						[self inform: 'no such selector']]]