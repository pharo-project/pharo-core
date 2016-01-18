unregisterClassNamed: aClassName 
	categories do: [ :each | each unregisterClassNamed: aClassName ]