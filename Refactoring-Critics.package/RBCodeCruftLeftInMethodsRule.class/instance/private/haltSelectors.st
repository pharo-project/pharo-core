haltSelectors
	| objectConvenience miscellaneous |
	objectConvenience := Object allSelectorsInProtocol: #halting.
	miscellaneous := #(clearHaltOnce inspectOnce setHaltOnce).
	^ objectConvenience, miscellaneous