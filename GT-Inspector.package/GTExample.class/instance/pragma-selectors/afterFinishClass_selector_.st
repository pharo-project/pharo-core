afterFinishClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'A method (implemented by a gtExampleProvider) to be performed after this example has run as the very last one of a chain of depending examples ~ similar but not identical to teardown of sunit'>
	
	afterFinish := self methodForClass: aClassOrClassName selector: aSelector