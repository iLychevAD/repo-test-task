#!/bin/bash
cd /deb && \
dpkg-deb --build "peervpn-${1}/"

