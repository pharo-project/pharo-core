resetHaltOnce
	 #haltOnce senders do: [ :method | method ast removeProperty: #haltOnce ifAbsent: [  ] ].