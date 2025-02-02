![Nice banner saying Insanium Edition Update Tool](docs/banner.png)

**Disclaimer:** This repository is only for educational purpose. Only use this with your own files/backups.
=============================

This script aims to help people adding improvements, fixing known bugs or resetting certain configurations.
It can be run directly from the retropie and apply updates locally, or you can run it on a device in the same local network by providing ssh credentials.


Join Ricks discord server to keep track on the latest changes.


![RickDangerousDiscordBanner](https://discordapp.com/api/guilds/857515631422603286/widget.png?style=banner2)

- [Usage](#usage)
- [Warning](#attention)
- [Features](#features)
  - [Install Improvements](#improvements)
  - [Fix known bugs](#fix-known-bugs)
  - [Restore Retroarch configurations](#restore-retroarch-configurations)
  - [Reset Emulationstation configrations](#reset-emulationstation-configurations)
  - [Enable/Disable System overlays](#system-overlay)
  - [Enable/Disable Handheld mode](#handheld-mode)
  - [Gamelist (Etc) Utilities](#gamelist-etc-utilities)
  - [Select Update Notification](#select-update-notification)
  - [Toggle Auto Clean](#toggle-auto-clean)
  - [Toggle Count Official Only](#toggle-count-official)
  - [Installation](#installation)
  - [Support](#support)
- [SSH Instructions](#ssh-usage)


# Usage

Simply run the following command on your Retropie via SSH (this is the recommended way, click [here](#ssh-usage) for further instruction) or access a terminal by connecting a keyboard and pressing F4
(Replace [link] with a URL to the MEGA storage containing the updates):

```
bash <(curl 'https://raw.githubusercontent.com/h3xp/RickDangerousUpdate/main/run.sh' -s -N) [link]
```

The script is self-explanatory, and it will guide you through the whole process.

## It is recommended to install the tool.

Installation will make the tool available from the "Options" tab in EmulationStation.

Simply select "Installation" in the main menu of the tool to open the "Installation menu".
Now hit "Install/Reinstall" and enjoy the comfort of having the tool directly in EmulationStation.


### After installation you will find a new "Update Tool" entry inside of EmulationStations "Options" tab:
![screenshot of the tools options entry inside of emulationstation](docs/screenshot_menu.png)

The script will also install a new command "update_tool" with which you can easily run the script from the CLI.

Note that if you do not install the tool, it will not be able to track what updates you have applied to your system and you will be prompted the install all available updates each time you run the tool until you do properly install it.

# Attention

The script has been tested, however we can't give a 100% guarantee that it might not break something on
your retropie. Therefore, use this at your own risk.

# Features

1. [Install Improvements](#improvements)
2. [Fix known bugs](#fix-known-bugs)
3. [Miscellaneous](#miscellaneous)
   - [Restore Retroarch configurations](#restore-retroarch-configurations)
   - [Reset Emulationstation configrations](#reset-emulationstation-configurations)
   - [Enable/Disable System overlays](#system-overlay)
   - [Enable/Disable Handheld mode](#handheld-mode)
   - [Gamelist (Etc) Utilities](#gamelist-etc-utilities)
   - [Select Update Notification](#select-update-notification)
   - [Toggle Auto Clean](#toggle-auto-clean)
   - [Toggle Count Official Only](#toggle-count-official)
4. [Installation](#installation)
5. [Support](#support)

## Improvements

This is the "main" feature and reason to create this tool. 
This will allow you to easily select single or multiple updates to process, either; to download from a MEGA drive directory, or previously downloaded to a directory on the pi.

## Fix known bugs

The title is self-explanatory, this feature will easily fix known bugs for you. It is recommended to run these.

## Miscellaneous

Various settings, tools and resets.

### Restore Retroarch configurations

Only use this if you screwed up. This will reset all retroarch configuration files for every system to their original state.

### Reset emulationstation configurations

Only use this if you screwed up. This will reset all emulationstation configurations to their original state.

### System overlay

This lets you easily activate and deactivate the bezels/overlays for each system.

### Handheld mode

This will reset the video settings and deactivate the bezels for these systems to make them more enjoyable on a handheld screen.
Don't use this if you have your retropie connected to a TV.
These systems will be adjusted:

- atarylynx
- gamegear
- gb
- gba
- gbc
- ngpc
- wonderswancolor

### Gamelist (Etc) Utilities

Gamelist (Etc) Utilities provide a lot of functions to clean up, in general, and work with your gamelist.xml files.
- Check Game Lists - This will check your gamelist.xml files and optionally check for orphaned roms, artwork, video snapshots, and multiple disk files.
- Clean Game Lists - This will clean your gamelist.xml files by removing invalid entries, it will also delete orphaned files like roms.
- Restore Clean Game List Logs - This will let you reverse the changes you applied with the "Clean Game Lists"-feature.
- Remove Check/Clean Game List Logs - Allows you to delete (clean/check) log files left by previous gamelist utilities actions.
- Manually Select Genres - Allows you to manually select official Rick Dangerous genres for roms that you have added manually, and add them to the correct collections.
- Realign Genre Collections - Scans gamelist.xml files and completely rebuilds genre collections from gamelist entries.
- Sort Game Lists - Sorts your gamelist.xml files by Name for easier readability.
- Clean Emulators Config - Sorts your emulators.cfg file, removing duplicate entries.
- Count of Games: Displays the total game count within gamelist.xml files from selected systems. When you count all systems this will also drop a counts.txt file and a games_list.txt file, so you can easily validate against official game counts and view a comprehensive listing of all games.

### Select Update Notification

Select Update Notification allows you to set what method is used to notify you of image updates and tool updates
- False - No notifications of updates or upgrades are displayed
- Theme - A message is displayed on the system selection screen when image updates or an upgrade to the tool is available
- Tool - At boot time the update tool can be optionally executed when image updates are available. This option should only be set if you have a keyboard attached to your Pi. This option includes the behaviour of the Theme notification.

### Toggle Auto Clean

Toggle Auto Clean allows you to turn on or off automatic cleaning of your gamelist files after any updates are loaded.

### Toggle Count Official

Toggle Count Offical allows to turn on or off inclusion of unofficial games within gamelist.xml files. Unofficial games are those whose path entries in gamelist.xml is not ./ .

## Installation

The three options on the "Installation menu" are:
- Install/Reinstall - this option will install the update tool fresh to the "Options" tab in EmulationStation, overwriting any existing configuration.
- Update - this option will update your version to the most current version available.
- Uninstall/Remove - this option will remove the tool entirely from the "Options" tab in EmulationStation..

## Support

Displays links to the Discord server and the Update Tool project

# SSH Usage

1. Make sure your pi is connected to the same network as your personal computer.
2. Make sure ssh is installed on your computer.

   - If you are on Windows you can check this by pressing `Windowskey + R` then type `cmd` and hit return.
   - Now a command line windows should have opened. Simply type `ssh` and hit return.
   - If you have ssh installed your output should look like this:

```batch
usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface]
           [-b bind_address] [-c cipher_spec] [-D [bind_address:]port]
           [-E log_file] [-e escape_char] [-F configfile] [-I pkcs11]
           [-i identity_file] [-J [user@]host[:port]] [-L address]
           [-l login_name] [-m mac_spec] [-O ctl_cmd] [-o option] [-p port]
           [-Q query_option] [-R address] [-S ctl_path] [-W host:port]
           [-w local_tun[:remote_tun]] destination [command]
```

   - If it doesnt look like that, you can find help for Windows [here](https://www.howtogeek.com/336775/how-to-enable-and-use-windows-10s-built-in-ssh-commands/)

3. Now you need to know your retropies IP address. The easiest way to get it is by opening the "Options" tab in EmulationStation and use the "Show IP" menu entry.
4. You are all set! Simply run this command in your command line window (`Windowskey + R` then type `cmd` and hit return):

Replace [IP] with the IP adress you just found out and [link] with a URL to the MEGA storage containing the updates.
```
ssh pi@[IP] bash <(curl 'https://raw.githubusercontent.com/h3xp/RickDangerousUpdate/main/run.sh' -s -N) [link]
```
5. It is strongly recommended that you use the "Installation menu" to properly install the update tool to the "Options" tab in EmulationStation.  If you do not then the tool will not be able to track what updates you have applied to your system and you will be prompted the install all available updates each time you run the update tool until you properly install it.
6. Enjoy !
