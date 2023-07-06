#!/usr/bin/env bash
#
#
## Installer Script

## Colors ----------------------------
Color_Off='\033[0m'
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

install_dependencies(){
	pacman -Syu --noconfirm $1
}

install() {
	INSTALL_DESC=$1
	SOURCE_FILE=$2
	TARGET_DIR=$3
	echo -e ${BBlue}"\n[*] Installing $INSTALL_DESC... $PWD/$SOURCE_FILE to $TARGET_DIR/$SOURCE_FILE" ${Color_Off}
	
	if [[ -d "$TARGET_DIR" ]]; then
		cp -f $PWD/$SOURCE_FILE $TARGET_DIR/$SOURCE_FILE
	else
		mkdir -p "$TARGET_DIR"
		cp -f $PWD/$SOURCE_FILE $TARGET_DIR/$SOURCE_FILE
	fi

	if [[ -f "$TARGET_DIR/$SOURCE_FILE" ]]; then
		echo -e ${BGreen}"[*] Successfully Installed.\n" ${Color_Off}
	else
		echo -e ${BRed}"[!] Failed to install.\n" ${Color_Off}
		exit 1
	fi
}

# Main
main() {
	install_dependencies "picom nitrogen polybar dunst network-manager-applet alacritty gnome-screenshot"
	install "I3" "config" "/etc/i3"
}

main
exit 0
