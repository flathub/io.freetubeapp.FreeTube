#!/bin/sh

EXTRA_FLAGS=()

# Display Socket
if [ "${XDG_SESSION_TYPE}" = "wayland" ] && [ -e "${XDG_RUNTIME_DIR}/${WAYLAND_DISPLAY:-wayland-0}" -o -e "${WAYLAND_DISPLAY}" ]; then
    EXTRA_FLAGS+=(
        "--ozone-platform-hint=auto"
    )
fi

export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}" 
exec zypak-wrapper /app/freetube/freetube "${EXTRA_FLAGS[@]}" "$@"
