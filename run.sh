#!/bin/sh

FLAGS=''

# Display Socket
if [ "$XDG_SESSION_TYPE" = "wayland" ] && [ -e "${XDG_RUNTIME_DIR}/${WAYLAND_DISPLAY:-wayland-0}" ]; then
    FLAGS="$FLAGS --ozone-platform-hint=auto --enable-features=WaylandWindowDecorations"
fi

env TMPDIR="$XDG_RUNTIME_DIR/app/${FLATPAK_ID:-io.freetubeapp.FreeTube}" zypak-wrapper /app/freetube/freetube "$FLAGS" "$@"