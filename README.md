# abaez/lua
## A base container for lua by [Alejandro Baez][baez]

### USAGE
**NOTE**: refactored the container to use [alpine][1] instead of [centos][2]. If you still want to use centos, then use the tag associations. All the tags (excluding 5.3.2) still use centos for their setup.

A lightweight base container for lua. The container allows you to run the version of lua you want by choosing from the branch or tag in your `Dockerfile`. The default version of lua is `5.3.*` on the `latest` tag. If you want to choose a different version, simply define it in your Dockerfile like so:

```
FROM abaez/lua:5.1
```

You can pick the version of lua you want by using one of the following:

* base branches:
    * latest: the most current version of lua-5.3.
    * 5.2: the most current version of lua-5.2.
    * 5.1: the most current version of lua-5.1.
* minor version:
    * 5.3.2
    * 5.3.1
    * 5.2.4
    * 5.1.5


[1]: https://hub.docker.com/_/alpine/
[2]: https://hub.docker.com/_/centos/
[baez]: https://keybase.io/baez
