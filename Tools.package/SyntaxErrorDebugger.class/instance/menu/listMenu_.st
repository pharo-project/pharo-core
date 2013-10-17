listMenu: aMenu
	^aMenu addList: {
		{'Proceed' translated. 					#proceed}.
		{'Debug calling process' translated. 	#debug}.
		{'Browse full translated' translated. 	#browseMethodFull}}.