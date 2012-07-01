loading
loadFrom: aStream
	| package |
	package := self materializeFrom: aStream.
	package load.
	^ package