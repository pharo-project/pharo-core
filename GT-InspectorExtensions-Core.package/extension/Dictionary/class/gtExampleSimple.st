gtExampleSimple
	<gtExample>
	| dict |
	dict := Dictionary new.
	dict at: 4 put: 2.
	dict at: #fourty put: 'two'.
	^ dict