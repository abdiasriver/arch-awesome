#!/bin/bash
set -e
sh awesome/extras/000-use-all-cores-makepkg-conf-v2.sh
sh reflector.sh
sh trizen.sh
sh awesome/2-awesome.sh
sh awesome/3-apps-awesome.sh
