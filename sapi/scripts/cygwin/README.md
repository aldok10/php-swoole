# Windows cygwin build swoole-cli

## Prepare the environment

> Manually install cygwin

> Download https://cygwin.com/setup-x86_64.exe from the browser and install it

> Set the software source address: http://mirrors.ustc.edu.cn/cygwin/

> Installation completed

> Find cygwin64-terminal in the windows start menu and open it

## Build steps

```bash

git submodule update --init
bash ./sapi/scripts/cygwin/install-re2c.sh

bash ./sapi/scripts/cygwin/cygwin-config-ext.sh
bash ./sapi/scripts/cygwin/cygwin-config.sh
bash ./sapi/scripts/cygwin/cygwin-build.sh
bash ./sapi/scripts/cygwin/cygwin-archive.sh

```