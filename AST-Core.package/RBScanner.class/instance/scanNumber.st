private-scanning
scanNumber
	| start number stop string |
	start := stream position.
	stream position: start - 1.
	number := SqNumberParser parse: stream.
	stop := stream position.
	stream position: start - 1.
	string := stream next: stop - start + 1.
	stream position: stop.
	self step.
	^RBNumberLiteralToken 
		value: number
		start: start
		stop: stop
		source: string