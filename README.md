terraform-azure-util
===

This docker image is designed as a simple utility image, for those situations where you need to run terraform with additional commands, 
which you could not install as a terraform provider.

## Usage

```
$ docker run -it -v $(PWD):/home terraform-azure-util:<version> /bin/bash
```
