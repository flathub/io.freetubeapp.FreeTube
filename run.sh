export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}" 
exec zypak-wrapper /app/freetube/freetube "$@"
