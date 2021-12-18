#!/bin/bash

layout=`bspc query -T -d | jq -r .layout`

echo "   $layout"

#label-monocle = "  "
#label-tiled = "  "
#label-fullscreen = "  "
#label-floating = "  "
#label-pseudotiled = "  "
