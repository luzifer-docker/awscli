# Luzifer / awscli

This repository contains a simple build for the [`awscli` util](https://aws.amazon.com/cli/) as a replacement for a local installation of the utility.

## Usage

```bash
$ docker run --rm -ti \
    -v "${HOME}/.aws:/root/.aws" \
    -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
    -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
    -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" \
    quay.io/luzifer/awscli help
```

Or you could create a shell alias for that command and use it like a local installation of awscli:

```bash
$ alias aws='docker run --rm -ti -v "${HOME}/.aws:/root/.aws" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" quay.io/luzifer/awscli'
$ aws help
```
