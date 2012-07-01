instance creation
subwidget: sub spec: aSpecSelector fractions: frac offsets: off

	self subwidget: (sub isArray 
						ifTrue: [ #(model), sub , {aSpecSelector} ]
						ifFalse: [ {#model. sub . aSpecSelector } ]).
						
	self fractions: frac.
	self offsets: off.
	self generateArguments