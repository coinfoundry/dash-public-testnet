## Dashcoin public testnet node

- Node
  - RPC Port 16001, Username: user, Password: pass

### Addresses

Node: yX66Yxw8gwtfcx4qkh1AoXzQbzwJvhwQnP

### To run this image with internal ports exposed at host:

```bash
docker run -it -d -p 16001:16001 coinfoundry/dash-public-testnet
```

### Example RPC against Node-Pool:

```bash
curl --user user:pass --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: application/json;' http://127.0.0.1:16001/
```