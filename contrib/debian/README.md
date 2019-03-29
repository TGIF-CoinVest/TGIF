
Debian
====================
This directory contains files used to package coinvestd/coinvest-qt
for Debian-based Linux systems. If you compile coinvestd/coinvest-qt yourself, there are some useful files here.

## coinvest: URI support ##


coinvest-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install coinvest-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your coinvest-qt binary to `/usr/bin`
and the `../../share/pixmaps/coinvest128.png` to `/usr/share/pixmaps`

coinvest-qt.protocol (KDE)

