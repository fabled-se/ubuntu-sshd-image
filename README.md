# ubuntu-sshd-image

Ubuntu image with sshd configured for use in testing

# Usage

Pass in your public key as an environment variable `PUBLIC_SSH_KEY`.

```sh
docker run \
    -e PUBLIC_SSH_KEY="ssh-ed25519 ..."
    -p 22:22 \
    -d \
    ghcr.io/fabled-se/ubuntu-sshd-image:latest
```
