testGroups
	| cli |
	cli := self command: #('http://ss3.gemstone.com/ss/MetaRepoForPharo20' '--group=foo').
	self assert: cli groups equals: {'foo'}.
	
	cli := self command: #('http://ss3.gemstone.com/ss/MetaRepoForPharo20' '--group=foo,boo').
	self assert: cli groups equals: {'foo' . 'boo'}.