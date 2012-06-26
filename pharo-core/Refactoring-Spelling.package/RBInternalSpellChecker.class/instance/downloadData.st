private
downloadData
	"Download data from a server."
	
	| response stream |
	response := [ HTTPSocket httpGet: self url ]
		on: Error
		do: [ :err | err messageText ].
	response isString
		ifTrue: [ ^ self ].
	stream := self directory 
		forceNewFileNamed: self filename.
	[ stream binary; nextPutAll: (response binary; contents) ]
		ensure: [ stream close ]