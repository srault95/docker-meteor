#!/bin/bash

set -e

apt-get autoremove -y \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/cache /var/lib/log \
        && rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man /usr/share/locale /usr/share/zoneinfo \
        && npm cache clear

