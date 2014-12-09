initScrollbar
	| ann |
	self removeAllMorphs.
	scrollbar ifNotNil: [  scrollbar announcer unsubscribe: self ].

	scrollbar := (vertical ifTrue: [ TxSlider vertical ] ifFalse: [ TxSlider horizontal  ]) new.
	
	self addMorph: scrollbar.

	ann := scrollbar announcer weak.
	
	ann 
		on: TxSliderDragged send: #sliderDragged: to: self;
		on: TxSliderScrollBackward send: #sliderScrollBackward to: self;
		on: TxSliderScrollForward send: #sliderScrollForward to: self
	