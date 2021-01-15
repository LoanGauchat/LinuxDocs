# Systemd 
**Systemd is a central management tool to control initialisation at the start of the kernel. It can also manage services and daemons while the system is running.


#### Checking the Status of Services::
- _ _systemctl status application.service


##### Starting and Stopping services:

Start and stop services:

systemctl start application.service
systemctl stop application.service		note that the .service at the end is not mandatory.


Restart and reloading:

systemctl restart application.service
systemctl reload application.service


Enabling and disabling : To tell systemd to start services automatically at boot, you must enable them

systemctl enable application.service 

This will create a symbolic link from the system’s copy of the service file (usually in /lib/systemd/system or /etc/systemd/system) into the location on disk where systemd looks for autostart files (usually /etc/systemd/system/some_target.target.wants.

systemctl disable application.service
This will remove the symbolic link that indicated that the service should be started automatically.

Check status, activated, enabled or failed:

systemctl status application.service

systemctl is-active application.service

systemctl is-enable application.service

systemctl is-failed application.service


System State Overview::

Listing Current Units:

systemctl status application.service


Listing all unit files:

systemctl list-unit-files

Displaying a unit file:

systemctl cat unit.service

Displaying dependencies:

systemctl list-dependencies unit.service


Checking unit properties:

systemctl show unit.service

Masking and unmasking units: mark a unit as completely unstartable by linking it to the /dev/null

systemctl mask unit.service

systemctl unmask unit.service


Editing unit files::

systemctl edit unit.service

This will load the current unit file into the editor, where it can be modified. When the editor exits, the changed file will be written to /etc/systemd/system, which will take precedence over the system’s unit definition (usually found somewhere in /lib/systemd/system).

After editing a unit it needs to be reload

Adjusting the System State (Runlevel) with Targets::
Targets are used to group other units together. 



Getting and setting the default target:

systemctl get-default

systemctl set-default graphical.target

List available targets:
systemctl list-units --type=target

Isolating targets: Dtart all of the units associated with a target and stop all units that are not part of the dependency tree. 


Using Shortcuts for Important Events::

To put the system into rescue (single-user) mode, you can just use the rescue command instead of isolate rescue.target:

 sudo systemctl rescue

To halt the system, you can use the halt command:

sudo systemctl halt

 

To initiate a full shutdown, you can use the poweroff command:

sudo systemctl poweroff

A restart can be started with the reboot command:

    sudo systemctl reboot



