buildBrowser
	| changeList b |

	changeList := self buildChangeList.
	
	self browserForList: changeList.
	
	b := browser
		messages: changeList;
		title: 'Recent versions of ' , class name , '>>' , selector;
		openWithSpec.
		
	self showDiffMorphWithConverter: (DiffMorphChangeRecordConverter 
		methodReference: browser textConverter method 
		referencesList: changeList).
		
	^ b	