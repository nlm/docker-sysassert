docker-sysassert
================

A build environment for standalone sysassert

- source: [sysassert](https://github.com/nlm/sysassert)
- docker: [docker-sysassert](https://github.com/nlm/docker-sysassert)

Usage
-----

Show this file:
```
docker run --rm -ti nlimage/sysassert
```

List built files:
```
docker run --rm -ti nlimage/sysassert ls dist
```

Export the binary:
```
docker run --rm -ti nlimage/sysassert cat dist/sysassert > sysassert
```
