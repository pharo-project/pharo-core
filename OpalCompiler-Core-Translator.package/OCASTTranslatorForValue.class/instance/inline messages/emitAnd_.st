emitAnd: aMessageNode

	self visitNode: aMessageNode receiver.
	methodBuilder 
		pushDup;
		jumpAheadTo: #end if: false;
		popTop.
	self visitInlinedBlockNode: aMessageNode arguments first.
	methodBuilder jumpAheadTarget: #end.