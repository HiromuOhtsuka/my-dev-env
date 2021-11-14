# my-dev-env
## 必要
- [multipass](https://multipass.run/)

## VM を作成する
### VM を作成する
```sh
$ make launch
```

## ssh を設定する
```sh
$ VM_IP_ADDRESS=$(multipass info --format json primary | jq -r '.info.primary.ipv4[0]')
$ cat <<EOS >> ~/.ssh/config
Host dev
    HostName ${VM_IP_ADDRESS}
    User ubuntu
EOS
```
```sh
$ multipass shell
# @primary
$ cp ~/Home/.ssh/${YOUR_SSH_PUBLIC_KEY_FILE} ~/.ssh/${YOUR_SSH_PUBLIC_KEY_FILE}
$ cat ~/Home/.ssh/${YOUR_SSH_SECRET_KEY_FILE} >> ~/.ssh/authorized_keys
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/${YOUR_SSH_SECRET_KEY_FILE}
```

### git を設定する
```sh
$ multipass shell
# @primary
$ cp ~/Home/.gitconfig ~/.gitconfig
```

### vs code から remote development を使う
`dev` に対して Remote Development を使う。
詳しくは、[VS Code Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) を参照。
