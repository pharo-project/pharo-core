testNestedVersionOrder

	| project version fileNames |
	project := self projectWith: #(outer).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: fileNames size = 2.
	self assert: (fileNames includes: 'Example-Core-dkh.1').
	self assert: (fileNames includes: 'Example-Test-dkh.1').

	project := self projectWith: #(extra).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: fileNames size = 1.
	self assert: (fileNames includes: 'Example-Core-dkh.3').

	project := self projectWith: #(extra nested).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: fileNames size = 1.
	self assert: (fileNames includes: 'Example-Core-dkh.3').

	project := self projectWith: #(outer extra).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: fileNames size = 2.
	self assert: (fileNames includes: 'Example-Core-dkh.3').
	self assert: (fileNames includes: 'Example-Test-dkh.1').

	project := self projectWith: #(outer #nested).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: (fileNames includes: 'Example-Core-dkh.2').

	project := self projectWith: #(outer nested extra).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: (fileNames includes: 'Example-Core-dkh.3').

	project := self projectWith: #(outer extra nested).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: (fileNames includes: 'Example-Core-dkh.2').

	project := self projectWith: #(extra nested outer ).
	version := project version: '1.1.3'.
	fileNames := version packages collect: [:pkg | pkg file].
	self assert: (fileNames includes: 'Example-Core-dkh.1').
