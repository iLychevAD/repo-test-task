#!/bin/bash
git clone https://github.com/peervpn/peervpn.git && \
cd peervpn && \
make && \
cp peervpn peervpn.conf /artefacts
