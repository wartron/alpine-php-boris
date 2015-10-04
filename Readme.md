Docker PHP Boris (Alpine)
============================


Building Docker Image
-------------------

    docker build -t wartron/alpine-php-boris .


Running Boris
-------------------

    docker run --rm -it wartron/alpine-php-boris



TODO
-------------------

* Need to fix use of  Ctrl-C / CTRL-Z to exit. *NOTE* you must use `exit()` to exit boris.