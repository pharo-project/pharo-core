setUp

	super setUp.
	gofer := Gofer new.
	gofer 
		gemsource: 'bogus'; 
		package: 'BogusConfiguration';
		package: 'Bogus';
		package: 'BogusExt'
		