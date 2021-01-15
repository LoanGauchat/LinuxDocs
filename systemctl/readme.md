# Systemd 
**Systemd is a central management tool to control initialisation at the start of the kernel. It can also manage services and daemons while the system is running.**


#### Checking the Status of Services::
- _ _systemctl status application.service_ _


##### Starting and Stopping services:

##### Start and stop services:

- _ _systemctl start application.service_ _
- _ _systemctl stop application.service		note that the .service at the end is not mandatory._ _


Restart and reloading:

- _ _systemctl restart application.service_ _
- _ _systemctl reload application.service_ _


Enabling and disabling : To tell systemd to start services automatically at boot, you must enable them

- _ _systemctl enable application.service_ _

This will create a symbolic link from the system’s copy of the service file (usually in /lib/systemd/system or /etc/systemd/system) into the location on disk where systemd looks for autostart files (usually /etc/systemd/system/some_target.target.wants.

systemctl disable application.service
This will remove the symbolic link that indicated that the service should be started automatically.

Check status, activated, enabled or failed:

- _ _systemctl status application.service_ _

- _ _systemctl is-active application.service_ _

- _ _systemctl is-enable application.service_ _

- _ _systemctl is-failed application.service_ _


System State Overview::

Listing Current Units:

- _ _systemctl status application.service_ _


Listing all unit files:

- _ _systemctl list-unit-files_ _

Displaying a unit file:

- _ _ssystemctl cat unit.service_ _

Displaying dependencies:

- _ _systemctl list-dependencies unit.service_ _


Checking unit properties:

- _ _systemctl show unit.service_ _

Masking and unmasking units: mark a unit as completely unstartable by linking it to the /dev/null

- _ _systemctl mask unit.service_ _

- _ _systemctl unmask unit.service_ _


Editing unit files::

- _ _systemctl edit unit.service_ _

This will load the current unit file into the editor, where it can be modified. When the editor exits, the changed file will be written to /etc/systemd/system, which will take precedence over the system’s unit definition (usually found somewhere in /lib/systemd/system).

After editing a unit it needs to be reload

Adjusting the System State (Runlevel) with Targets::
Targets are used to group other units together. 



Getting and setting the default target:

- _ _systemctl get-default_ _
- _ _systemctl set-default graphical.target_ _

List available targets:
- _ _systemctl list-units --type=target_ _

Isolating targets: Dtart all of the units associated with a target and stop all units that are not part of the dependency tree. 


Using Shortcuts for Important Events::

To put the system into rescue (single-user) mode, you can just use the rescue command instead of isolate rescue.target:

- _ _ sudo systemctl rescue_ _

To halt the system, you can use the halt command:

- _ _ sudo systemctl halt_ _

 

To initiate a full shutdown, you can use the poweroff command:

- _ _sudo systemctl poweroff_ _

A restart can be started with the reboot command:

  - _ _sudo systemctl reboot_ _




