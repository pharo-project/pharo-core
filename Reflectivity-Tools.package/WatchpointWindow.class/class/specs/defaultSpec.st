defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col |
			col
				newRow: [ :row | row add: #label ] height: self toolbarHeight;
				add: #list;
				newRow: [ :row | row add: #inspectIt ] height: self toolbarHeight ]