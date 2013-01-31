context stack menu
debugProceedMenu: aMenu
	^aMenu addList: {
		{'Proceed' translated. 		#proceed}.
		{'Debug' translated. 		#debug}}
		