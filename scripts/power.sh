#!/usr/bin/env bash

commands=$(ls ~/scripts/power | sed 's/^\(.\)/\U\1/')
selection=$(printf "%s\n" "$commands" | wofi --show dmenu | tr '[:upper:]' '[:lower:]')
$(~/scripts/power/$selection)
