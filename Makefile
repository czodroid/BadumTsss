# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0
# File Created: Jan 2012
# Last Modified: vendredi 02 août 2019, 20:07
# Edit Time: 2:53:34
# Description:
#
# $Id: $
#

all: release

release:
	./gradlew assembleRelease
	cp app/build/outputs/apk/release/app-release.apk ../badumtsss-release-`date +%Y%m%d`.apk
	@echo "<- done!"

debug:
	./gradlew assembleDebug
	@echo "<- done!"

clean:
	./gradlew clean
	rm -fr .gradle
	rm -fr build
	rm -fr app/build app/libs app/release app/debug
	rm -fr BadumTsss.iml app/app.iml
	rm -fr captures
	rm -fr .idea
	@echo "<- done!"

realclean: clean
	rm -f *.apk
	@echo "<- done!"

fclean: realclean

re: realclean all

