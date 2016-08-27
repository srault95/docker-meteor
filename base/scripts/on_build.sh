#!/bin/bash

set -e

curl -sL https://install.meteor.com | /bin/sh

$METEORD_DIR/lib/build_app.sh
