instance creation
subwidget: subwidget spec: aSpecSelector fractions: fractions offsets: offsets

	^ self new
		subwidget: subwidget 
		spec: aSpecSelector 
		fractions: fractions 
		offsets: offsets;
		yourself