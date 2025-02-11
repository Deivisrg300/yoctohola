all:
    gcc -o holamundogit helloworld.c

install:
    install -d $(DESTDIR)/usr/bin
    install -m 0755 holamundogit $(DESTDIR)/usr/bin
