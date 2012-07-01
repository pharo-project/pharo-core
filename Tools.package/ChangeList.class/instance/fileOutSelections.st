menu actions
fileOutSelections 
	| fileName internalStream |
	fileName := UIManager default request: 'Enter the base of file name' initialAnswer: 'Filename'.
	internalStream := (String new: 1000) writeStream.
	internalStream header; timeStamp.
	listSelections with: changeList do: 
		[:selected :item | selected ifTrue: [item fileOutOn: internalStream]].

	FileStream writeSourceCodeFrom: internalStream baseName: fileName isSt: true
