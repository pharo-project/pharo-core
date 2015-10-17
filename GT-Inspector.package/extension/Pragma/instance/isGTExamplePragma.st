isGTExamplePragma
	<toBeDeprecated: #gtExample:>
	^ self keyword = #gtExample
		or: [ self keyword = #gtExample: ]