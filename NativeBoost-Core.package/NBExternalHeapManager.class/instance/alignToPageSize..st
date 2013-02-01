memory pages
alignToPageSize: requestedSize

	" pages is 4kb wide"
	| u align |
	align := self pageAlignment.
	
	^ (u := requestedSize \\ align) > 0 
		ifTrue: [ requestedSize + align - u ] 
		ifFalse: [ requestedSize ]