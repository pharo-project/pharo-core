description
    | desc |
    desc := self class description , self projectPath , ':' , self projectVersion.
    self repoPath ifNil: [ ^ desc ].
    ^ desc , '/' , self repoPath