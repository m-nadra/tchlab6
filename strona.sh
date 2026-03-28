#!/bin/sh

IP=$(hostname -i)
HOST=$(hostname)

cat <<EOF > /usr/share/nginx/html/index.html
<html>
  <head>
    <title>Laboratorium 5</title>
  </head>
  <body>
    <h1>Mikolaj Nadra</h1>
    <h2>TI 6.2</h2>
    <p><b>IP serwera:</b> $IP</p>
    <p><b>Hostname:</b> $HOST</p>
    <p><b>Wersja aplikacji:</b> ${VERSION}</p>
  </body>
</html>
EOF