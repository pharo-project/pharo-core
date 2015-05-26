testChangeLayoutTypeToByte
	aClass := self 
		makeWithLayout: FixedLayout
		andSlots: { #id. #name }.
	"Change the layout of the class from pointer to bytes"
	aClass := self makeWithLayout: ByteLayout.
	
	aClass layout checkIntegrity.
	
	self assert: aClass layout isBits.
	self assert: aClass instVarNames isEmpty.