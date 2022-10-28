# .bashrc

# for mpv, temporarily
# https://github.com/mpv-player/mpv/issues/9393
# and to some extent: https://forums.fedoraforum.org/showthread.php?326079-mpv-issue-after-upgrading-to-Fedora-34

# alias mpv=" __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json mpv --no-config --vo=gpu"
#alias mpv="mpv --vo=gpu"


#https://github.com/mpv-player/mpv/issues/9393#issuecomment-1166576511
export __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json
