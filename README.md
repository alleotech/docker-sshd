# ssh

SSHd docker image

## Usage

docker run -d --name sshd -p 8022:22 -e SSH_KEY="public ssh key" alleotech/sshd

Then ssh with root
