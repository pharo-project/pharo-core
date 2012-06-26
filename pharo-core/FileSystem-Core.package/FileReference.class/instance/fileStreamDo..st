streams
fileStreamDo: aBlock
	^ self fileStreamWritable: true do: aBlock