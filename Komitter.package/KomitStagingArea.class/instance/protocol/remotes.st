remotes
	| result |
	
	result := packages first remotes.
	packages allButFirst do: [ :each |
		result := result intersection: each remotes ].
	
	^ result collect: [ :each | each koRemote ]