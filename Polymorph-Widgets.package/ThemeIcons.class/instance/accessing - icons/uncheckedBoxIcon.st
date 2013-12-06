uncheckedBoxIcon
	"Private - Generated method"
	
	^ icons
			at: #uncheckedBox
			ifAbsentPut: [ Form
				extent: 12@12
				depth: 32
				fromArray: self uncheckedBoxIconContents 
				offset: 0@0 ]