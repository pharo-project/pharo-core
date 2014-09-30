paneWidthsToFit: limit
	| padded |
	padded := Array new: self paneCount.
	self paneCount = 0 ifTrue: [ ^ padded ].
	padded atAllPut: (limit / self sizing) floor.
	(1 to: limit - padded sum) do: [:i | padded at: i put: (padded at: i) + 1].
	^ padded
	
	