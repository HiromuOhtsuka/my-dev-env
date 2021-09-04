# my-local-development-environment
## 必要
- Vagrant

## セットアップ
## Shareディレクトリの作成と必要なファイル群をコピー
```sh
mkdir -p ./share
cp ~/.ssh/id_rsa ./share/id_rsa
cp ~/.gitconfig ./share/.gitconfig
```

### VM を作成する
```sh
vagrant up
```

### ssh config を設定する
```sh
vagrant ssh-config >> ~/.ssh/config
```

エディタで `~/.ssh/config` を編集し、
追加された ssh-config の `Host` を `development.local` に変更する。

### Configure vs code
`development.local` に対して Remote Development を使う。
詳しくは、[VS Code Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) を参照。

## Share
`./share` がホストとゲストで共有されるディレクトリです。

## 終了
```sh
vagrant halt
```

## 環境の編集
新たにパッケージを追加する際は、ここに as code として残すこと。

## バックアップ
```sh
vagrant package --output=package_$(date "+%Y%m%d_%H%M%S").box
```
