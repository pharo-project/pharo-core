validateBlockOriginalFie40FooLoad
  ^ [ 
  self verify: 'GoferFoo' version: 'GoferFoo-lr.1'.
  self verify: 'GoferBar' version: 'GoferBar-lr.1'.
  self verify: 'GoferFaux' version: 'GoferFaux-tg.32'.
  self verify: 'GoferBeau' version: 'GoferBeau-dkh.55' ]