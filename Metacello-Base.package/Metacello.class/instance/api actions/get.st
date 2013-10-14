get
    "resolve project name in given repository and return an instance of MetacelloProject resolved from a ConfigurationOf or BaselineOf"

    self addStatement: #'get' args: #().
    ^ self execute