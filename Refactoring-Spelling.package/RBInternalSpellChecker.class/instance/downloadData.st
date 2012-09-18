private
downloadData
	"Download data from a server."
	
	| response |
	response := [ HTTPSocket httpGet: self url ]
		on: Error
		do: [ :err | err messageText ].
	response isString
		ifTrue: [ ^ self ].
	self dataFile ensureDeleted 
		writeStreamDo: [ :stream|
			stream binary; nextPutAll: (response binary; contents) ]