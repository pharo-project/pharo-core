compareTo:anOtherVersion
	| diff versions |
	versions := Array with: (browser selectedMessage compiledMethod) with:anOtherVersion.
	diff := DiffModel new.
	diff	title: 'Versions of ' , class name , '>>' , selector.
	diff text:(DiffMorphChangeRecordConverter 
		methodReference: browser textConverter method 
		referencesList: versions) getText.
      diff openWithSpec.
