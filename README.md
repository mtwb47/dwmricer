![](image.png)

# Matt's DWM Auto Installing - Ricing - Script

This script is meant for those who are intimidated by installing DWM by themselves or are (like Matt) just too lazy to do it.

# Usage

Step 1. Download the script

	git clone $URL

Step 2. CD into that director

	cd dwmricer

Step 3. Use Vim (or another editor) to change the code for your particular distro. This just needs to be done at the top. If you're using Arch, you need not change anything. If you're using Ubuntu, you need to comment out the line that starts sudo pacman, and delete the # sign in front of the line that starts sudo apt install.

Step 4. cd ..

	cd ..

Step 5. Now, run the script. DO NOT RUN AS ROOT!

	./dwmricer

You will be prompted for your password. You may also be asked to confirm the installation of some software by pressing the y button. Do so.


Step 6. Log out of your current DE or Window Manager.

Step 7. Log into DWM. (There should be a little cog or something on your log in screen to change your current session)


# Keybindings That You Should Know
MOD p --- spawn dmenucmd

MOD j --- focusstack +1

MOD k --- focusstack -1

MOD i --- incnmaster +1

MOD h --- setmfact -0.05

MOD l --- setmfact +0.05

MOD Tab --- view

MOD q --- killclient

MOD t --- setlayout layouts[0]

MOD F1 --- setlayout layouts[2]

MOD m --- setlayout layouts[1]

MOD F2 --- setlayout layouts[3]

MOD F3 --- setlayout layouts[4]

MOD F4 --- setlayout layouts[5]

MOD F5 --- setlayout layouts[6]

MOD F6 --- setlayout layouts[7]

MOD F7 --- setlayout layouts[8]

MOD F8 --- setlayout layouts[9]

MOD F9 --- setlayout layouts[10]

MOD F10 --- setlayout layouts[11]

MOD f --- setlayout layouts[12]

MOD + Ctrl comma --- cyclelayout -1

MOD + Ctrl period --- cyclelayout +1

MOD space --- setlayout

MOD space --- setlayout

MOD + Shift j --- movestack +1

MOD + Shift k --- movestack -1

MOD + Shift space --- togglefloating

MOD 0 --- view ~0

MOD + Shift 0 --- tag ~0

MOD Left --- focusmon -1

MOD Right --- focusmon +1

MOD + Shift Left --- tagmon -1

MOD + Shift Right --- tagmon +1

MOD y --- togglescratch 0

MOD u --- togglescratch 1

MOD n --- togglescratch 2

MOD + Shift n --- togglescratch 3

MOD o --- togglescratch 4

MOD + Shift x --- quit

---------------------

# Things that Could Go Wrong

* My rice of DWM needs Nerd Fonts installed. If you don't have them, you'll need to do so.

* If DWM won't load, chances are it it did not compile correctly, either due to a missing dwm dependency or a permissions issue. Submit an issue and I'll try to help.
