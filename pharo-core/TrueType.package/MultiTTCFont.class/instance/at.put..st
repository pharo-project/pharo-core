as yet unclassified
at: char put: form

	| wcache |
	wcache := self cache.
	wcache replaceFrom: 1 to: wcache size - 1 with: wcache startingAt: 2.
	wcache at: wcache size
		put: (Array with: char asciiValue with: foregroundColor with: form).
	^ form
