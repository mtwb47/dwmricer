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

# Things that Could Go Wrong
* My rice of DWM needs Nerd Fonts installed. If you don't have them, you'll need to do so.
* If DWM won't load, chances are it it did not compile correctly, either due to a missing dwm dependency or a permissions issue. Submit an issue and I'll try to help.



