protocolListMenu: aMenu 
	protocolSelection
		ifNotNil: [aMenu
				add: ('Load protocol ''{1}''' translated format: {protocolSelection})
				action: #loadProtocolSelection ].
	^ aMenu