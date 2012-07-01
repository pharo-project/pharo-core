*NautilusCommon
isTestMethod

	^ (self methodClass inheritsFrom: TestCase) and: [ self selector beginsWith: 'test' ]