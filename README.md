# LL Half-Life 2: Deathmatch Freeplay Server

## Linux Container
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-hl2dm-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-hl2dm-freeplay "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-hl2dm-freeplay.svg)](https://microbadger.com/images/lacledeslan/gamesvr-hl2dm-freeplay "Get your own image badge on microbadger.com")

**Download**
```
docker pull lacledeslan/gamesvr-hl2dm-freeplay
```

**Run self tests**
```
NOT YET IMPLEMENTED
```

**Run simple interactive server**
```
docker run -it --rm --net=host lacledeslan/gamesvr-hl2dm-freeplay ./srcds_run -game hl2mp +map dm_overwatch -console -usercon +sv_lan 1
```

# Build Triggers
Automated builds of this image can be triggered by the following sources:
* [Commits on GitHub](https://github.com/LacledesLAN/gamesvr-hl2dm-freeplay)
* [Upstream build of lacledeslan/gamesvr-hl2dm](https://hub.docker.com/r/lacledeslan/gamesvr-hl2dm/)
