private
removeAllItems

	| tmp |
	tmp := self sort: (toSelectModel listItems asOrderedCollection addAll: (selectedModel listItems);yourself ).
	toSelectModel   items: tmp.
	selectedModel items: {}.
	toSelectModel updateList.
	selectedModel updateList.  	  