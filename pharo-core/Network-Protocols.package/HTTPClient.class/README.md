I'm a facade for doing simple HTTP GET/POST operations like downloading / uploading some content.

For example, I get HTML content for http://www.pharo-project.org web page like this:

      HTTPClient httpGet: 'http://www.pharo-project.org'.
      HTTPClient httpGetDocument: 'http://www.pharo-project.org'.

When successful, a Stream respectively a MIMEDocument is returned, in case of error, a String is returned.

Or, I can make a application/x-www-form-urlencoded post request to http://intranet.acme.com/login and send form data to the server like this:

      (args := Dictionary new)
		at: 'username' put: #('john@acme.com');
		at: 'password' put: #('secretpassword').
	result := HTTPClient httpPostDocument: 'http://intranet.acme.com/login' args: args.

Alternatively, I can do a multipart/formdata post request to http://intranet.acme.com/files and send a file like this:

      (args := Dictionary new)
		at: 'file' put: (Array with: (MIMEDocument contents: 'This is a test' mimeType: 'text/plain' uri: 'file:///test.txt').
	result := HTTPClient httpPostDocument: 'http://intranet.acme.com/files' args: args.
	
Pay attention, my code is not really good.

<trollmode>
I'm a good example of how not to write code. Turn around, walk away,
fast. I'm fully of bugs.

Somebody at some point thought that HTTP is a simple "hacker with
telnet"-protocol. It's not.
</trollmode>

[COTDC] 3 - Laurent Laffont, Francisco Ortiz Peñaloza, Sven Van Caekenberghe, Philippe Marschall.