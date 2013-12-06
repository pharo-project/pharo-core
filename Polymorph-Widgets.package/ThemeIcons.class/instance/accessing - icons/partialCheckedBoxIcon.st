partialCheckedBoxIcon
	"Private - Generated method"
	
	^ icons
			at: #partialCheckedBox
			ifAbsentPut: [ Form
				extent: 12@12
				depth: 32
				fromArray: self partialCheckedBoxIconContents 
				offset: 0@0 ]