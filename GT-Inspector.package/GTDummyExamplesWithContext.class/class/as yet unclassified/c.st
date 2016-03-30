c
	<gtExample>
	self assert: self gtExampleContext notNil.
	self gtExampleContext at: #c put: #c.
	^ self gtExampleContext 