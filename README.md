# Flake8 docker image

Many of the flake8 docker images use alpine python and make it hard to
debug if you run into an issue.  This is a simple docker image that uses CMD and not ENTRYPOINT.

alpine python is problmatic and can be slow.  I avoide it.

To use it just use `-v` to mount the source folder under `/flake8` using somthing like this:

```shell
docker run -ti --rm -v $(pwd):/flake8 cbitter78/python_flake8
```

Make sure you have a flake8.ini file in the source folder.   The ini file will be used to run flake8.

Here is an example file:

```ini
# See https://flake8.pycqa.org/en/latest/user/options.html#cmdoption-flake8-config

[flake8]
statistics = True
show_source = True
show-source = True
exclude = .tox, package/, __pycache__
output-file = flake8_out.txt
tee = True

```