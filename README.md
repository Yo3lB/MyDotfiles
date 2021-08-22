# MyDotfiles
Here you can find my settings and my themes for bspwm, polybar, awesome, picom and others ... Thanks !!


Directory structure required for the theme, for bspwm + polybar, and AwesomeWM:


Recommended programs:

* Dmenu2: https://aur.archlinux.org/packages/dmenu2/
* Picom Jonaburg version: https://github.com/jonaburg/picom

For bspwm the theme is optimized for multiple monitors. Edit bspwmrc and the polybar launch.sh based on your preferences.

Note. From bspwmrc several scripts are called:

1 - ConfMonitor.sh >>> Commented and deleted. It is only to virtually resize with xrandr a secondary monitor that I use, so it is not important for you, unless you want to take advantage of it for something similar for your configuration.

2 - dpms.sh >>> I use this script to disable the power saving system function and turn off the monitors automatically. There are several ways to do it, I prefer this one.

3 - jgmenu.sh >>> Launch Jgmenu. This is optional. But if you like having a menu of your applications, it is a very good option and very customizable. If you download my dotfiles you already have it configured. You can modify it to your liking and change the header image, and the entire design to your liking. Remember that you must have it installed.

4 - nitrogen.sh >>> It is not essential. But I use nitrogen to set the desktop background. You can comment on it in bspwmrc and change it to the program of your preference, like feh ...

5 - picom.sh >>> I use the patched version of Jonaburg, which offers more possibilities and effects ... it is still experimental, but it works quite well. In my dotfiles you already have it configured as I have it, with animations and transitions for the windows, both for Bspwm and Awesome wm ... You can install it from AUR: picom-jonaburg-git is the package to install ... then create a script to call it at the beginning, in my dots you already have mine but if you want to create it you follow the instructions of Jonaburg ...

NOTE: I use Pipewire for sound control. In the polybar config you have both configured for both Pulseaudio and Pipewire ... comment or uncomment the module of your choice.

Also keep in mind that the modules of my Polybar config have come with the name of my Wi-Fi network card: wlp0s22f2u3, change it for yours, otherwise it will not lift the modules correctly and the thema design will not be seen correctly ... It is all very simple with iwconfig you can know the name of your device ...

FOR AWESOME WM, everything is much simpler. Once Awesome is installed, directly download: awesome.tar.gz and copy the awesome folder into your .config folder.

You don't need to install anything else. From the rc.lua you can change the theme, I have only developed two:

- {{{Variable definitions}}} -

local themes = {

    "Neutron", - 1
    "Die_Hard", - 2
}

local chosen_theme = themes [1]

By changing the number in local chosen [1] or [2] you will have a different type of window frame. The first topic is a design of mine. The second is a theme inspired by the great Matthew Farrel's Die Hard 4.0 theme ... for Emerald. I always liked it a lot and wanted to rescue it and adapt it to other environments.

Remember to change the calls to the scripts that I use at the beginning according to your preferences, uncomment the ones that you do not need or according to your preferences >>> rc.lua:

-- {{{ Autostart windowless processes }}} -- 

-- Start config monitors
awful.util.spawn_with_shell("/home/yoel/.config/scripts/ConfMonitor.sh")

-- Start picom
awful.util.spawn_with_shell("/home/yoel/.config/scripts/picom.sh")

-- Start Nitrogen
awful.util.spawn_with_shell("/home/yoel/.config/scripts/nitrogen.sh")

-- Start Dpms
awful.util.spawn_with_shell("/home/yoel/.config/scripts/dpms.sh")

If you have any questions, you can contact me at: email.yoelbit@gmail.com or through my facebook https://www.facebook.com/yoel.bit.9 ... I hope it serves you, you adapt it to yours, break it or do what you deem most appropriate. Thanks. Greetings YB. 


