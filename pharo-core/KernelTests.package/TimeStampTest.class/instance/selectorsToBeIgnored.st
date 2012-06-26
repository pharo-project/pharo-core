Coverage
selectorsToBeIgnored

	| deprecated private special |

	deprecated := #().
	private := #( #printOn: ).
	special := #().

	^ super selectorsToBeIgnored, deprecated, private, special.