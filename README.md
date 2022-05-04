# nextzxos-autolaunch
 A cofigurable autolaunch program for NextBasic

AutoLaunch 1.0 (certainly just a dev tool)

Its not perfect but it serves a function should you need it - absolutley no warranties

Why this exists?

When I am developing software for the Next I normally write using my PC and compile / assemble direct to my FlashAir mapped to a drive letter (it's H if you want to know). I then press F4 and reboot the Next and test the code, this can mean rebooting many, many times so its nice to have your file automatically launch when in a deep in a dev session. Manually editing autolaunch can be a real slow down if you are building multiple programs at once for testing, this allows me to pick a new program in a few key presses. 

You pick a file to autolaunch and that's it - its very easy to change / disable / uninstall from the main NextZXOS menu

Suports : "TAP" "NEX" "BAS" "SN?" "Z80"

But note - This program will overwrite your autoexec.bas!

This program attempts to backup your current enMenus.cfg and autoexec.bas to enMenus.bak and autoexec.bak and restore on exit but you know, sometimes..

This program adds a new menu item using the new custom menus feature in NextZXOS, creating a new file called c:\nextzxos\enMenus.cfg. 

<img src="https://github.com/em00k/src-gifs/blob/main/Autolaunch.gif">

To install copy the 

- AutoLaunch folder to your SD Card
- load ConfigAuto.bas 
- It will look like the normal browser but if you PRESS SPACE you will see some options

- c = Clear Autolaunch?			will clear the current program from autolaunching
- i = Install Autolaunch? 		will copy enMenus.cfg and autoexec.bas for autolaunch, it should ask you to back before hand!
- u = uninstall Autolaunch?		will remove enMenus.cfg and autoexec.bas and ask you if you want to restore

- Once installed soft reboot

You should now see a new menu option : 

"Edit Autolaunch"

If you select this you will see the browser again, now you can select a file from anywhere on the SD to autolaunch. Once a program is chosen, reboot and your program shoudl automitcally run.

To uninstall, soft reset and HOLD SPACE, select Edit Autolauch and pick u

To skip autolaunch soft reset and hold space

This basic program will allow you to select a file for autolauch on reset.

You can skip loading by holding SPACE on soft reboot

EditMenu.bas will simply open enMenus.cfg in QE - this doesnt work quite like a normal text editor as its based on vi

Use the cursors to find the line you want to edit, the I, you will now be able to edit that line, press EDIT when done
to quit and save press SYM+Z wq or just q to quit, if can't quit and dont want to save soft reset.  

The files -enMenus.cfg and -autolaunch.bas are the files copied to C:\NextZXOS\ when you install. 
