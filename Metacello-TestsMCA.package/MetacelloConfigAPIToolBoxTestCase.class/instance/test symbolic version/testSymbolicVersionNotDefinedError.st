testSymbolicVersionNotDefinedError
    | project |
    project := self project.
    self should: [ project version: #'explicitly does not exist' ] raise: MetacelloSymbolicVersionNotDefinedError