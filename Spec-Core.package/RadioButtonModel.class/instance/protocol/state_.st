state: aBoolean
	<api: #boolean getter: #state>
	"Set if the checkbox is activated or not"

	self canDeselectByClick
		ifTrue: [ stateHolder value: aBoolean ]
		ifFalse: [ self state ifFalse: [ stateHolder value: aBoolean ] ]