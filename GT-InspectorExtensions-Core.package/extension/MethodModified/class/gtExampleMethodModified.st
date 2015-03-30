gtExampleMethodModified
	" this is a fake annoucement, we just pick 2 arbitrary methods "
	<gtExample: 'Diff old and new method'>
	^ MethodModified new 
		oldMethod: (MethodModified >> #gtMethodDiffIn:);
		method: (MethodModified class >> #gtExampleMethodModified);
		yourself