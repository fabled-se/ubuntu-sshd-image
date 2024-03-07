# ubuntu-sshd-image 

Ubuntu image with sshd configured for use in testing

# Usage

Create a `authorized_keys` file in which you put your public key. Make sure the file is owned by
root and has the permission `644`.

```sh
cat ~/.ssh/id_ed25519.pub > authorized_keys
chown root:root authorized_keys
chmod 644 authorized_keys

docker run \
    --mount type=bind,src=$(pwd)/authorized_keys,dst=/root/.ssh/authorized_keys \
    -p 22:22 \
    -d \
    ubuntu-sshd-image
```

