unregisterClassNamed: aClassName 
	priorityLists values
		do: [ :handlers |
				handlers 
					detect: [ :handler | handler handledId = aClassName ]
					ifFound: [ :handler | handlers remove: handler ] ]