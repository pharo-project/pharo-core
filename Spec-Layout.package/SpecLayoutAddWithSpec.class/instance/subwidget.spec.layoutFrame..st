instance creation
subwidget: sub spec: aSpecSelector layoutFrame: aFrameLayout

	self subwidget: (sub isArray 
						ifTrue: [ #(model), sub , {aSpecSelector} ]
						ifFalse: [ {#model. sub . aSpecSelector } ]).
						
	self layoutFrame: aFrameLayout.
	self generateArguments