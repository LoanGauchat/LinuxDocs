# Systemd 
**Systemd is a central management tool to control initialisation at the start of the kernel. It can also manage services and daemons while the system is running.**


#### Starting and Stopping services:

##### Start and stop services:

- _systemctl start application.service_ 
- _systemctl stop application.service		note that the .service at the end is not mandatory._ 


##### Restart and reloading:

-  _systemctl restart application.service_ 
-  _systemctl reload application.service_ 

###### Enabling and disabling : To tell systemd to start services automatically at boot, you must enable them

- _systemctl enable application.service_

This will create a symbolic link from the system’s copy of the service file (usually in /lib/systemd/system or /etc/systemd/system) into the location on disk where systemd looks for autostart files (usually /etc/systemd/system/some_target.target.wants).

If executing a script, make sure the scrip *is not in the home folder and have the correct rights*

systemctl disable application.service
This will remove the symbolic link that indicated that the service should be started automatically.

##### Check status, activated, enabled or failed:

- _systemctl status application.service_

- _systemctl is-active application.service_

- _systemctl is-enable application.service_

- _systemctl is-failed application.service_


#### System State Overview::

##### Listing Current Units:

-_systemctl status application.service_


##### Listing all unit files:

- _systemctl list-unit-files_

##### Displaying a unit file:

- _ssystemctl cat unit.service_

##### Displaying dependencies:

- _systemctl list-dependencies unit.service_


##### Checking unit properties:

- _systemctl show unit.service_

##### Masking and unmasking units: mark a unit as completely unstartable by linking it to the /dev/null

- _systemctl mask unit.service_

- _systemctl unmask unit.service_


#### Editing unit files::

- _systemctl edit unit.service_

This will load the current unit file into the editor, where it can be modified. When the editor exits, the changed file will be written to /etc/systemd/system, which will take precedence over the system’s unit definition (usually found somewhere in /lib/systemd/system).

After editing a unit it needs to be reload

Adjusting the System State (Runlevel) with Targets::
Targets are used to group other units together. 



#### Getting and setting the default target:

- _systemctl get-default_
- _systemctl set-default graphical.target_

##### List available targets:
- _systemctl list-units --type=target_

Isolating targets: Dtart all of the units associated with a target and stop all units that are not part of the dependency tree. 


##### Using Shortcuts for Important Events::

To put the system into rescue (single-user) mode, you can just use the rescue command instead of isolate rescue.target:

- _ sudo systemctl rescue_

##### To halt the system, you can use the halt command:

- _ sudo systemctl halt_

 

##### To initiate a full shutdown, you can use the poweroff command:

- _sudo systemctl poweroff_

##### A restart can be started with the reboot command:

  - _sudo systemctl reboot_




