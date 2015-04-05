zoni/ubuntu
-----------

This is a pretty standard Docker image, with few noteworthy points except
for the following:

* It receives a full system upgrade and is rebuilt every day, to ensure
  packages are up-to-date.
* A `runas` command is provided which can run a given program under a
  different user ID.
* The *noninteractive* APT frontend is enabled by default.
* The locale is set to `en_US.UTF-8`.
