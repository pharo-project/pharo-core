visitMessageNode: aMessageNode 
	| style link hand |
	style := #keyword.
	(Symbol findInterned: aMessageNode selector asString)
		ifNil: [ 
			style := (Symbol thatStartsCaseSensitive: aMessageNode selector asString skipping: nil) isNil
				ifTrue: [ #undefinedKeyword ]
				ifFalse: [ #incompleteKeyword ] ].

	aMessageNode selectorParts do: [ :token | self addStyle: style forNode: token ].
	
	link := TxActionAttribute new 
		filter: [ :evt | evt commandKeyPressed and: [ evt  isMouseDown] ];
		value: [:evt |
				evt shiftPressed ifTrue: [ 
					SystemNavigation new browseSendersOf: aMessageNode selector name: 'Senders of ', aMessageNode selector autoSelect: aMessageNode selector  ]
				ifFalse: [ SystemNavigation new browseAllImplementorsOf: aMessageNode selector ] ].
	hand := TxCursorAttribute with: Cursor webLink.

	aMessageNode selectorParts do: [ :token | 
		self addAttribute: link forNode: token.
		self addAttribute: hand forNode: token.
		 ].

	
	(aMessageNode isCascaded not or: [ aMessageNode isFirstCascaded ])
		ifTrue: [ self visitNode: aMessageNode receiver ].
	aMessageNode arguments do: [ :each | self visitNode: each ]