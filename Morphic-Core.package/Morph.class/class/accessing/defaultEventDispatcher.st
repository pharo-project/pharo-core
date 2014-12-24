defaultEventDispatcher
	^ EventDispatcher ifNil: [ EventDispatcher := MorphicEventDispatcher new ]