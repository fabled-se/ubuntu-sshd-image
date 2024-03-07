# ubuntu-sshd-image 

Ubuntu image with sshd configured for use in testing

# Usage

Create a `authorized_keys` file in which you put your public key. Make sure the file is owned by
root `chown root:root authorized_keys` and has the correct permission `chmod 644 authorized_keys`.

```sh
docker run --mount type=bind,src=$(pwd)/authorized_keys,dst=/root/.ssh/authorized_keys -p 22:22 -d ubuntu-sshd-image
```

