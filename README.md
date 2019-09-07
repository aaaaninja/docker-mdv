docker-mdv
==========
>https://github.com/axiros/terminal_markdown_viewer

↑のコマンドをdocker化したもの. こやつpython3に対応できていないため大抵のnative環境だと不具合が発生しがち……ゆえにdocker化した.

build方法
---------
普通に `docker build` すればいいが
- docker build
- docker-slim build --from-dockerfile
と docker build ・ [docker-slim][https://github.com/docker-slim/docker-slim/]の2通りの方法を用意している.

### normal (普通のbuild)
```sh
docker build -t mdv - < Dockerfile
```

### docker-slimを使用したbuild (めっちゃimage size小さい)
```sh
docker-slim build --http-probe=false --from-dockerfile slim.Dockerfile --tag mdv.slim .
```
