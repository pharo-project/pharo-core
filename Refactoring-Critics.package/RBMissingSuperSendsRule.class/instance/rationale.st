accessing
rationale
	^ 'Checks that some methods contain a super message send. Some methods should always contain a super message send. For example, the postCopy method should always contain a "super postCopy". The list of methods that should contain super message sends is in BasicLintRule>>superMessages.'