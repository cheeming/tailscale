go-shadowsocks2
 - Clone go-shadowsocks2 repo, and then use this command
```
export GOOS=linux
export GOARCH=arm64
go build -o shadowsocks2-linux-arm64
```

v2ray-plugin
 - Download from https://app.circleci.com/pipelines/github/shadowsocks/v2ray-plugin/143/workflows/9bc1a3d2-e896-49d9-bbe1-fbf4b88b2ce8/jobs/140/artifacts

To start a corresponding shadowsocks client:
```
./shadowsocks2 -c 'ss://AEAD_CHACHA20_POLY1305:${PASSWORD}@${HOSTNAME}:8488' -verbose -socks :1080 -u -plugin ./v2ray-plugin
```
On some clients the encryption might be listed as: chacha20-ietf-poly1305
