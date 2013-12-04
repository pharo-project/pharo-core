checkedBoxIcon
	"Private - Generated method"
	
	^ icons
			at: #checkedBox
			ifAbsentPut: [ Form
				extent: 12@12
				depth: 32
				fromArray: self checkedBoxIconContents 
				offset: 0@0 ]