# LL Half-Life 2: Deathmatch Dedicated Freeplay Server

## Linux Container
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-hl2dm-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-hl2dm-freeplay "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-hl2dm-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-hl2dm-freeplay "Get your own image badge on microbadger.com")

### Download

```shell
docker pull lacledeslan/gamesvr-hl2dm-freeplay
```

## Run self tests

```shell
docker run -it --rm lacledeslan/gamesvr-hl2dm-freeplay ./ll-tests/gamesvr-hl2dm-freeplay.sh
```

## Run simple interactive server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-hl2dm-freeplay ./srcds_run -game hl2mp +map dm_overwatch -usercon +sv_lan 1
```
