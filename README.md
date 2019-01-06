# Tor Proxy Iprotate
Docker image containing tor with fast ip rotation and possibility to select your exit region.

## Features

* 30 second ip rotation

## Running

```bash
docker run -p 127.0.0.1:9050:9050 -d --name tor-proxy timms/tor-proxy-rapid-ip-rotation
```

Configure your client's proxy settings with `localhost` and port `9050`(socks5).

### Validating your ip address

```bash
curl --socks5-hostname 127.0.0.1:9050 ipecho.net/plain
curl --socks5-hostname 127.0.0.1:9050 whatismyip.akamai.com
```