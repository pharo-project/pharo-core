testNestedBaselineOrder

	| project version packageNames |
	project := self projectWith: #().
	version := project version: '1.1.2-baseline'.
	packageNames := version packages collect: [:pkg | pkg name].
	self assert: packageNames size = 1.
	self assert: (packageNames includes: 'Example-Core').

	project := self projectWith: #(#extra).
	version := project version: '1.1.2-baseline'.
	packageNames := version packages collect: [:pkg | pkg name].
	self assert: packageNames size = 2.
	self assert: (packageNames includes: 'Example-Core').
	self assert: (packageNames includes: 'Example-Test').

	project := self projectWith: #(#nested).
	version := project version: '1.1.2-baseline'.
	packageNames := version packages collect: [:pkg | pkg name].
	self assert: packageNames size = 3.
	self assert: (packageNames includes: 'Example-Core').
	self assert: (packageNames includes: 'Example-Base').
	self assert: (packageNames includes: 'Example-Test-Nested').

	project := self projectWith: #(nested extra).
	version := project version: '1.1.2-baseline'.
	packageNames := version packages collect: [:pkg | pkg name].
	self assert: packageNames size = 4.
	self assert: (packageNames includes: 'Example-Core').
	self assert: (packageNames includes: 'Example-Base').
	self assert: (packageNames includes: 'Example-Test').
	self assert: (packageNames includes: 'Example-Test-Nested').

	project := self projectWith: #(extra nested).
	version := project version: '1.1.2-baseline'.
	packageNames := version packages collect: [:pkg | pkg name].
	self assert: packageNames size = 4.
	self assert: (packageNames includes: 'Example-Core').
	self assert: (packageNames includes: 'Example-Base').
	self assert: (packageNames includes: 'Example-Test').
	self assert: (packageNames includes: 'Example-Test-Nested').
