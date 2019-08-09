# sshd

## About

![](https://img.shields.io/github/license/alleotech/docker-sshd)

SSHd docker image by [AlleoTech Ltd](https://alleo.tech)

## Usage

```
docker run -d --name sshd -p 8022:22 -e SSH_KEY="public ssh key" alleotech/sshd
```

Then ssh with root
