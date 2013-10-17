emitOr: aMessageNode

	self visitNode: aMessageNode receiver.
	methodBuilder 
		pushDup;
		jumpAheadTo: #end if: true;
		popTop.
	self visitInlinedBlockNode: aMessageNode arguments first.
	methodBuilder jumpAheadTarget: #end.