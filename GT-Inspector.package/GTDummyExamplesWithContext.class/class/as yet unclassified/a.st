a
	<gtExample>
	self assert: self gtExampleContext notNil.
	self gtExampleContext at: #a put: #a.
	^ self gtExampleContext 