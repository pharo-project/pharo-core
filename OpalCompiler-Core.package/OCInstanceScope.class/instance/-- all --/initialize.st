initialize
  
	vars := Dictionary new.
	selfVar := OCSpecialVariable new
		name: 'self';
		scope: self;
		yourself.
	superVar := OCSpecialVariable new
		name: 'super';
		scope: self;
		yourself.