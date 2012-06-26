private
loadData
	"Load data from an external file as fast as possible."

	| result stream |
	(self directory fileExists: self filename)
		ifFalse: [ self downloadData ].
	(self directory fileExists: self filename)
		ifFalse: [ self error: 'The spelling dictionary cannot be downloaded from <' , self url , '>.' ].
	stream := self directory
		oldFileNamed: self filename.
	[	| zstream size |
		zstream := ZLibReadStream on: stream binary.
		result := Array new: (size := zstream nextInt32).
		1 to: size do: [ :index | result at: index put: (String withAll: (zstream next: zstream next)) ] ]
			ensure: [ stream close ].
	^ result