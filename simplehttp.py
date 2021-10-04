## Raises an simple http server on local network
# https://docs.python.org/2/library/simplehttpserver.html

import http.server
import socketserver


PORT = 8080

handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), handler) as httpd:
    print("Server started at localhost:" + str(PORT))
    httpd.serve_forever()