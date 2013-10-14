execute
    | script |
    script := self statements.
    self statements: nil.
    ^ self scriptExecutor execute: script