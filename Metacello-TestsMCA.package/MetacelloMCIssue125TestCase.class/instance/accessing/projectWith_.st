projectWith: projectAttributes
    | project |
    "Construct Metacello project"
    project := MetacelloMCProject new.
    project projectAttributes: projectAttributes.
    MetacelloVersionConstructor on: self projectClass new project: project.
    ^ project