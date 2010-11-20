#!/bin/sh
touch NEWS README AUTHORS ChangeLog
automake --add-missing
autoreconf
