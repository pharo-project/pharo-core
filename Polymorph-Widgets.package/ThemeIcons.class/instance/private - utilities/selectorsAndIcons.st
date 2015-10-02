selectorsAndIcons
	| allIcons |

	allIcons := Dictionary new.
	self class allSelectors 
		select: [ :each | 
			(each endsWith: 'Icon')
				or: [ (each endsWith: 'Form')
				or: [ (each beginsWith: 'glamorous') and: [ (each endsWith: 'Contents') not ]]]]
		thenDo: [ :each | | form |
			form := self perform: each.
			form isForm 
				ifTrue: [ allIcons at: each put: form ] ].
	^ allIcons