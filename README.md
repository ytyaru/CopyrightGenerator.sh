[ja](./README.ja.md)

# CopyrightGenerator.sh

Generate copyright.

# Features

* `© {year} {name}`

# Requirement

* bash

# Installation

```sh
git clone https://github.com/ytyaru/CopyrightGenerator.sh
```

# Usage

```sh
cd CopyrightGenerator.sh/src
copyright.sh
```

Specify an author name.

```sh
copyright.sh 'your name'
```
```sh
AUTHOR='your name' copyright.sh
```
```sh
AUTHOR_NAME='your name' copyright.sh
```

## call function

```sh
. copyright_lib.sh
```
```sh
echo "$(GenerateCopyright)"
```

Specify an author name.

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

## run unit-tests

```sh
./test_copyright_lib.sh
./test_copyright.sh
```

# Note

* The year is local time. Not UTC time.

# Author

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

