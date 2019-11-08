#!/bin/bash
dpkg-scanpackages /deb /dev/null | gzip -3c > /deb/Packages.gz
