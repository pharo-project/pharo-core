protocolListMenu: aMenu 
	protocolSelection
		ifNotNil: [aMenu
				add: ('Load protocol ''{1}''' format: {protocolSelection})
				action: #loadProtocolSelection ].
	^ aMenu