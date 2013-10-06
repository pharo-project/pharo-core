testChangeLayoutTypeFromByte

	aClass := self makeWithLayout: ByteLayout.
	"Change the layout of the class from bytes to pointer"
	aClass := self 
		makeWithLayout: PointerLayout 
		andSlots: { #id. #name }.
	
	aClass layout checkIntegrity.
	
	self deny: aClass layout isBits.
	self assert: aClass instVarNames equals: { #id. #name }.