# rouing/lua
## A base container for lua by [William C Ardoin](https://git.rouing.me/)

### USAGE
A lightweight base container for lua. The container allows you to run the version of lua you want by choosing from the branch or tag in your `Dockerfile`. The default version of lua is `5.3.*` on the `latest` tag. If you want to choose a different version, simply define it in your Dockerfile like so:

```
FROM https://docker.rouing.me/docker/lua
```

You can pick the version of lua you want by using one of the following:

* base branches:
    * latest: the most current version of lua-5.3
    * 5.3: the most current version of lua-5.3 
    * 5.2: the most current version of lua-5.2 (5.2.4)
    * 5.1: the most current version of lua-5.1 (5.1.5)