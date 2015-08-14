refreshButton: aList
	<menu>
	aList
		act: [ :presenter | self onRefreshFrom: presenter ]
		icon: Smalltalk ui icons glamorousRefresh
		entitled: 'Refresh'