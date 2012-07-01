Coverage
selectorsToBeIgnored

	| private | 
	private := #( #printOn: #state: ).

	^ super selectorsToBeIgnored, private
