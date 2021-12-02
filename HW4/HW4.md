**Week 4 Homework Submission File: Linux Systems Administration**

**Step 1: Ensure/Double Check Permissions on Sensitive Files**

1.  Permissions on **/etc/shadow** should allow only **root** read and
    > write access.

    -   Command to inspect permissions: sudo ls -lat /etc/shadow

    -   Command to set permissions (if needed): sudo chmod 600
        > /etc/shadow

2.  Permissions on **/etc/gshadow** should allow only **root** read and
    > write access.

    -   Command to inspect permissions: sudo ls -lat /etc/gshadow

    -   Command to set permissions (if needed): sudo chmod 600
        > /etc/gshadow

3.  Permissions on **/etc/group** should allow **root** read and write
    > access, and allow everyone else read access only.

    -   Command to inspect permissions: sudo ls -lat /etc/group

    -   Command to set permissions (if needed): sudo chmod 604
        > /etc/group

4.  Permissions on **/etc/passwd** should allow **root** read and write
    > access, and allow everyone else read access only.

    -   Command to inspect permissions: sudo ls -lat /etc/passwd

    -   Command to set permissions (if needed): sudo chmod 604
        > /etc/passwd

**Step 2: Create User Accounts**

1.  Add user accounts for **sam**, **joe**, **amy**, **sara**,
    > and **admin**.

    -   Command to add each user account (include all five users):

> sudo useradd sam
>
> sudo useradd joe
>
> sudo useradd amy
>
> sudo useradd sara
>
> sudo useradd admin

2.  Ensure that only the **admin** has general sudo access.

    -   Command to add **admin** to the **sudo** group:

> sudo usermod -aG sudo admin

**Step 3: Create User Group and Collaborative Folder**

1.  Add an **engineers** group to the system.

    -   Command to add group:

> sudo addgroup engineers

2.  Add users **sam**, **joe**, **amy**, and **sara** to the managed
    > group.

    -   Command to add users to **engineers** group (include all four
        > users):

> sudo usermod -aG engineers sam
>
> sudo usermod -aG engineers joe
>
> sudo usermod -aG engineers amy
>
> sudo usermod -aG engineers sara

3.  Create a shared folder for this group at **/home/engineers**.

    -   Command to create the shared folder:

> mkdir /home/engineers

4.  Change ownership on the new engineers\' shared folder to
    > the **engineers** group.

    -   Command to change ownership of engineer\'s shared folder to
        > engineer group:

> Sudo chown :engineers /home/engineers

**Step 4: Lynis Auditing**

1.  Command to install Lynis: apt install lynis

2.  Command to see documentation and instructions: man lynis

3.  Command to run an audit:

4.  Provide a report from the Lynis output on what can be done to harden
    > the system.

    -   ![](images\media\image1.png){width="6.5in"
        > height="3.3784722222222223in"}Screenshot of report output:

**Bonus**

1.  Command to install chkrootkit: apt install chkrootkit

2.  Command to see documentation and instructions: man chkrootkit

3.  Command to run expert mode: sudo chkrootkit -x

4.  Provide a report from the chrootkit output on what can be done to
    > harden the system.

    -   Screenshot of end of sample output:

![](images\media\image2.png){width="5.933333333333334in"
height="3.5493055555555557in"}
