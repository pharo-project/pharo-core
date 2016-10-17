refreshButton: aList
	<menu>
	aList
		act: [ :presenter | self onRefreshFrom: presenter ]
		iconName: #glamorousRefresh
		entitled: 'Refresh'