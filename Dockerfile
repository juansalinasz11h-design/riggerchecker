FROM python:3.12-alpine
WORKDIR /app
COPY start.sh /app/start.sh
RUN printf '%s\n' \
  'import os' \
  'from http.server import ThreadingHTTPServer, BaseHTTPRequestHandler' \
  'PAGE = open("/app/start.sh", "rb").read()' \
  'class H(BaseHTTPRequestHandler):' \
  '    def do_GET(self):' \
  '        path = self.path.split("?", 1)[0]' \
  '        if path in ("/", "/index.html", "/start.sh"):' \
  '            self.send_response(200)' \
  '            self.send_header("Content-Type", "text/html; charset=utf-8")' \
  '            self.send_header("Content-Length", str(len(PAGE)))' \
  '            self.send_header("Cache-Control", "no-store")' \
  '            self.end_headers()' \
  '            self.wfile.write(PAGE)' \
  '        else:' \
  '            self.send_error(404)' \
  '    def log_message(self, fmt, *args):' \
  '        print(fmt % args)' \
  'port = int(os.environ.get("PORT", "8080"))' \
  'print("listening", port)' \
  'ThreadingHTTPServer(("0.0.0.0", port), H).serve_forever()' \
  > /app/serve.py
EXPOSE 8080
CMD ["python", "/app/serve.py"]
