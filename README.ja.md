[en](./README.md)

# CopyrightGenerator.sh

　コピーライトを生成する。

# 特徴

* `© {year} {name}`

# 必須環境

* bash

# インストール

```sh
git clone https://github.com/ytyaru/CopyrightGenerator.sh
```

# 使い方

```sh
cd CopyrightGenerator.sh/src
copyright.sh
```

　任意の著者名を指定する。

```sh
copyright.sh 'your name'
```
```sh
AUTHOR='your name' copyright.sh
```
```sh
AUTHOR_NAME='your name' copyright.sh
```

## 関数呼出

```sh
. copyright_lib.sh
```
```sh
echo "$(GenerateCopyright)"
```

　任意の著者名を指定する。

```sh
echo "$(GenerateCopyright 'your name')"
```
```sh
AUTHOR='your name'
echo "$(GenerateCopyright)"
```
```sh
AUTHOR_NAME='your name'
echo "$(GenerateCopyright)"
```

## 単体テスト実行

```sh
./test_copyright_lib.sh
./test_copyright.sh
```

# 注意

* 年はローカル時刻である。UTC時刻ではない。

# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

