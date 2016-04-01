# Garrys-Mod-Zombie-Survival

This open source repository of scripts I have written up for maps in Garry's Mod Zombie Survival are free to use by anyone under the condition that credit is given to me since getting the vectors and finding the triggers inside of maps and editing them is time consuming. So please leave the credits function inside the scripts and give credit where it is due, By keeping these credits in motivates me to keep fixing maps. (I did decide to do this for free after all.)

Removing/altering the credits hook is a violation to the AGPLv3 License i have released these scripts under. (You have been warned.) Refer to the LICENSE file in the root directory for more information.


Install these map profiles to the following directory you have zombie survival installed upon your local pc or server.
`"/garrysmod/gamemodes/zombiesurvival/gamemode/maps/*.lua"`

For other fixes and added features to Zombie survival they can be found inside my fork : https://github.com/C0nw0nk/zombiesurvival

If you are having issues with players bypassing bans i did a script for that too : https://github.com/C0nw0nk/Garrys-Mod-Family-Sharing

# How to install :

Install these scripts to the `"/garrysmod/lua/autorun/"` folder.

# Server Auto Run Hook's Features :

#####Prevented client side crashes by changing client console variables upon connection.
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/crash.lua

#####Outputting to console who breaks a prop "all methods of attack including explosives and jumping ontop of the prop". (Players would do this then join the zombie team sabotaging humans survival.)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/prop-break.lua#L1

#####Outputting to console who on the Zombie team is attacking and destroying fleshcreeper nests. (Flesh creepers would build a nest realy far away and destroy the closest nests trolling.)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/prop-break.lua#L12

#####Prevented Zombies trolling attacking and destroying props the shade is holding. (Zombies would do this to prevent the shade killing their friends etc.)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/prop-break.lua#L26

#####Prevented humans destroying props in wave 1 or the selection of who will become a zombie. (Players would do this and join the zombie team. Sabotage!)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/prop-break.lua#L42

#####Prevented humans destroying guns or ammo on the floor. (Players would do this then join the zombie team)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/prop-break.lua#L89

#####Outputting to console who unails a dead persons cade. (Inside a piano cade on wave 6 and a Kliener picks up a hammer this is the worst thing in the world.)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/unnailing.lua

#####Fixed humans prop launching by nailing a prop down and launching with a prop they place or nail.(kills from one human killing another by launching a prop at them would be prop physics or func physbox.)
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/anti-prop-launch.lua
######If you encounter issues such as props bouncing all over the map (Physics engine crash) then delete this script.

#####Disabling casting of dynamic shadows to improve performance.
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/fps.lua

#####Fixed HL2 ladder death glitching. (Killing yourself on a ladder as soon as you press your USE key to grapple onto prevents the ladder being used. You will also respawn on the ladder.) If you will be boss do this in intermission as a crow and spawn on the ladder as boss, if the ladder is inside the humans cade this is awful.
https://github.com/C0nw0nk/Garrys-Mod-Zombie-Survival/blob/master/garrysmod/lua/autorun/server/ladder-glitch.lua

Fixed Humans and Zombies getting stuck inside of eachother or on their heads.

Fixed players spamming crouch while in the air causing their hitbox to bounce up and down aswell as animation jitter.
