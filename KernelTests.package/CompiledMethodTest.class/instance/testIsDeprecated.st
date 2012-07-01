tests - testing
testIsDeprecated
	|  method cls |

	method := (self class)>>#deprecatedMethod.
	self assert: method isDeprecated.
	
	method := (self class)>>#deprecatedMethod2.
	self assert: method isDeprecated.


	method := (self class)>>#testIsDeprecated.
	self deny: method isDeprecated.
