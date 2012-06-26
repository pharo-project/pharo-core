ZnDispatcherDelegate - straight-forward dispatching to mapped urls.

Modelled after Ruby's WEBrick API:

server = WEBrick::HTTPServer.new(:Port => 2000)
	server.mount_proc("/heresy"){|req, res| Application.new.handle(req, res)} 
	server.mount_proc("/favicon.ico"){|req,res| res.status = 404}


ZnDispatcherDelegate API:

server := (ZnServer startDefaultOn: 9090)
		delegate: (ZnDispatcherDelegate new 
			map: '/hello' to: [ :request :response | response entity: (ZnStringEntity html: '<h1>hello server</h1>') ];
			map: '/counter' to: [ :request :response | counterApplication handleRequest: request response: response ]).