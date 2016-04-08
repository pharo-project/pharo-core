afterFinish: aSelector
	<gtExamplePragma>
	<description: 'A method, provided by the given selector, to be performed after this example has run as the very last one of a chain of depending examples ~ similar but not identical to teardown of sunit'>
	
	afterFinish := self methodForSelector: aSelector