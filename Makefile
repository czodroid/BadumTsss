# Filename: Makefile
# Copyright (C) 2012 Olivier Sirol <czo@free.fr>
# License: GPL (http://www.gnu.org/copyleft/gpl.html)
# Started: Jan 2012
# Last Change: mardi 25 août 2015, 12:40
# Edit Time: 2:44:05
# Description:
#
# $Id: $
#

release:
	gradle assembleRelease
	cp app/build/outputs/apk/app-release.apk ../badumtsss-release-`date +%Y%m%d`.apk
	@echo "<- done!"

debug:
	gradle assembleDebug
	@echo "<- done!"

clean:
	gradle clean
	rm -fr .gradle gradle
	rm -fr build app/build
	rm -fr captures
	rm -fr .idea/workspace.xml .idea/libraries
	@echo "<- done!"

realclean: clean
	rm -fr local.properties
	rm *.apk
	@echo "<- done!"
