Modded 1.12.2 servers use a software called SpongeForge.
A working SpongeForge.jar is included in the mods folder by default, you can feel free to update this if you want.

Plugins need to EITHER:
- Come from https://ore.spongepowered.org/, the official place for Sponge Plugins.
- Come from another site/github but **specifically state they are for Sponge too!** (Some plugins, like
grief defender are hosted on Spigotmc.org, but specifically list Sponge versions there)


Plugins go in the server's mods folder

---------------------------------------------------




** RECOMMENDED PLUGINS (If you're running a public server, you want these) **


============ Nucleus @ https://nucleuspowered.org/ ============

[Description]: 
- Nucleus adds all of the regular commands, such as /home, /tpa, /ban and adds 
"permission nodes" for each command. 
- For example, the permission node for /ban is listed as nucleus.ban.base over on https://nucleuspowered.org/docs/permissions.html
- You will need to find the permission nodes for commands on this list in order to give the permissions to players.

[Download]: https://ore.spongepowered.org/Nucleus/Nucleus/versions
---------------------------------------------------




============ Luckperms @ https://luckperms.net ============
[Description]: 
- Luckperms is a Permission Manager
- It is used to give "permission nodes" from plugins such as Nucleus to players
- As an example, to give everyone (the 'default' group) permission to [/fly] you'd use [/lp group default permission set nucleus.fly.base]
- It features a web editor to make bulk adding permissions easier. Use [/lp group groupName editor] to get the URL. Add the permission nodes to the list
click the plus sign at the bottom right, and then click save at the top right. You can run the code provided using console.

[Download]: https://luckperms.net
---------------------------------------------------



============ GriefDefender @ https://www.spigotmc.org/resources/griefdefender.68900/ ============
[Description]: 
- GriefDefender is the continuation of popular plugin GriefPrevention. It allows users to claim land and trust friends.
It can be heavily modified to restrict the usage of certain items and blocks under certain circumstances.
- It is listed as a *paid* mod, but you can compile the plugin for free using the source code @ http://github.com/bloodmc/GriefDefender/
- If you actually pay for the plugin, you're paying for access to their support Discord and access to download the compiled .jar files instead of manually compiling.

[Recommended version]: Whatever the latest for Sponge is- this plugin updates very frequently.

[Download]: https://www.spigotmc.org/resources/griefdefender.68900
---------------------------------------------------