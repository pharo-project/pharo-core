testNestedBaseline
    | project version packageNames |
    project := self projectWith: #().
    version := project version: '1.1.1-baseline'.
    packageNames := version groups collect: [ :pkg | pkg name ].
    self assert: packageNames size = 1.
    self assert: (packageNames includes: 'Core').
    project := self projectWith: #(#'extra').
    version := project version: '1.1.1-baseline'.
    packageNames := version groups collect: [ :pkg | pkg name ].
    self assert: packageNames size = 2.
    self assert: (packageNames includes: 'Core').
    self assert: (packageNames includes: 'Extra').
    project := self projectWith: #(#'nested').
    version := project version: '1.1.1-baseline'.
    packageNames := version groups collect: [ :pkg | pkg name ].
    self assert: packageNames size = 2.
    self assert: (packageNames includes: 'Core').
    self assert: (packageNames includes: 'Nested').
    project := self projectWith: #(#'nested' #'extra').
    version := project version: '1.1.1-baseline'.
    packageNames := version groups collect: [ :pkg | pkg name ].
    self assert: packageNames size = 3.
    self assert: (packageNames includes: 'Core').
    self assert: (packageNames includes: 'Nested').
    self assert: (packageNames includes: 'Extra')