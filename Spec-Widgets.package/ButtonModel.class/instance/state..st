protocol
state: aBoolean
	<api: #boolean getter: #state registration: #whenStateChangedDo:>
	"set if the button is highlighted"
	
	^ stateHolder contents: aBoolean