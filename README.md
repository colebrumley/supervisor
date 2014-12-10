CentOS + Supervisord Docker image
==========

This image is meant to be a base for other images.  It is a rebuild of the model [here][1], replacing Ubuntu with CentOS.

To use it, just add an app-specific config file (with a .conf extension) to `/etc/supervisor/conf.d/*.conf`.  The image auto-loads everything from this folder, so no **CMD** or **ENTRYPOINT** changes are required.

## Modifications
The Supervisor plugins [Superlance][2] and [supervisor-stdout][3] are installed.

  [1]: https://github.com/Krijger/docker-cookbooks
  [2]: https://pypi.python.org/pypi/superlance
  [3]: https://github.com/coderanger/supervisor-stdout
