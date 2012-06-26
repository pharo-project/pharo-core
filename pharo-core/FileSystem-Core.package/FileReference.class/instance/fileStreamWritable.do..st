streams
fileStreamWritable: aBoolean do: aBlock
	| stream |
	stream := filesystem openFileStream: path writable: aBoolean.
	^ [ aBlock value: stream ] ensure: [ stream close ]
	