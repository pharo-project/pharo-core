defaultSpec
	<spec>

	^ SpecLayout composed
		newColumn: [ :column |
		column
			newRow: [ :row | row
				add: #sendButton;
				add: #cancel ] height: 26;
			newRow: [ :row | row
				"add: #granularity;"
				add: #autoSubmit ] height: 26;
			newRow: #(stack) ]