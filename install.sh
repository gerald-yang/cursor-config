#!/bin/bash

if [ -z "$1" ]; then
        echo "Usage: ./install {downloaded cursor appimage}"
        exit -1
fi

username=$(whoami)
mkdir -p ~/bin
cp -f "$1" ~/bin/cursor.AppImage
chmod +x ~/bin/cursor.AppImage
cp cursor.png ~/bin/

bash -c "cat > /home/$username/.local/share/applications/cursor.desktop" <<EOL
[Desktop Entry]
Name=Cursor AI IDE
Exec=/home/$username/bin/cursor.AppImage --no-sandbox
Icon=/home/$username/bin/cursor.png
Type=Application
Categories=Development;
EOL
