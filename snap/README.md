
### External ressources:
- GTK3 support for base20: https://hackmd.io/0I09MG1FRKqO0ehIdLHpoQ#
- Newer GTK3 support: https://forum.snapcraft.io/t/the-gnome-3-38-extension/22923
- Gnome guildelines: https://blogs.gnome.org/hellsworth/files/2019/11/GNOME-extensions-for-desktop-apps.pdf

### Useful build commands:

#### See .deb package dependencies:
```shell
dpkg -I package.deb
```

#### Pack/unpack snap file:
```shell
# Unpack:
unsquashfs file.snap

# Pack:
snapcraft pack squashfs-root

# Remove directory
rm -rf squashfs-root
```

#### Install a snap from a squashfs directory:
```shell
snap try squashfs-root
```

#### Install a snap from a local .snap file
```shell
snap install file.snap --dangerous
```

### Post-build steps:

1. Replace the `/usr/bin/chromium` with the fix in `./fixes`
   
2. Move `/usr/bin/lib/x86_64-linux-gnu/pulseaudio/libpulsecommon-13.99.so`
to `/usr/bin/lib/x86_64-linux-gnu/libpulsecommon-13.99.so`
   
### Publish steps:
Source: https://snapcraft.io/docs/releasing-your-app


