# lighttpd-docker
An ultralight web server with bleeding edge features

## Quick Start

Just run the container attached to an available port. Perhaps port 8080?

``` sh
docker run -p 8080:80 3ch01c/lighttpd
```

Now you should see the default lighttpd page at http://localhost:8080.

## Configuring Mods

Add custom mods to the `config/conf-enabled` directory. Then, re-run the container with the `config` directory mounted.

``` sh
docker run -p 8080:80 -v ./config:/etc/lighttpd 3ch01c/lighttpd
```

## Configuring Static Content

Add static content to the `www` directory. Then, re-run the container with the `www` directory mounted.

``` sh
docker run -p 8080:80 -v ./www:/var/www/html 3ch01c/lighttpd
```

## Configuring Logging

Re-run the container with the `log` directory mounted.

``` sh
docker run -p 8080:80 -v ./log:/var/log/lighttpd 3ch01c/lighttpd
```

If you want to log access and not just errors, enable the `accesslog` mod by symlinking it into the `config/conf-enabled` directory.

``` sh
docker run -p 8080:80 -v ./log:/var/log/lighttpd -v ./config/conf-available/accesslog.conf:/etc/lighttpd/conf-enabled/accesslog.conf 3ch01c/lighttpd
```
