#!/bin/sh
rm -rf /run/cosmic-greeter/cosmic/com.system76.CosmicSettingsDaemon/v1/* > /dev/null 2>&1
# Tells this cosmic-comp instance it's the greeter, so it hands the display off to the
# incoming session on a clean login instead of tearing it down (avoids the black-screen
# flash on the greeter->desktop transition - see cosmic-comp's lib.rs for the mechanism).
export COSMIC_GREETER_HANDOFF=1
exec cosmic-comp cosmic-greeter > /dev/null 2>&1