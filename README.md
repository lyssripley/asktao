# [Tencent Cloud](https://cloud.tencent.com) `Asktao 1.60` Setup Documentation

[《Asktao》](https://wd.gyyx.cn) tells the story of the resurrection of Shiji Niangniang, who was turned into a stubborn rock on the top of Skull Mountain by Taiyi Zhenren after being secretly helped by the leader of the Jie Sect, and her plan to recruit disciples, attract talent, and ally with various forces like the Western teachings, preparing to engage in a final battle with the Chan Sect during the imminent calamity of the Immortal Realm.

---

# [Tencent Cloud](https://cloud.tencent.com) Switch to CentOS 6.9

**Note**: Since the Lightweight Application Server currently only supports version 7.6, a little trick is required to use CentOS 6.9 (32-bit version).

- First, create a CVM instance: `CVM`->`Buy Now`->`Custom Configuration`->`Pay-As-You-Go`
- Region: Select the region where the Lightweight Application Server is located, e.g., if the Lightweight Application Server is in Shanghai Zone 5, choose Shanghai Zone 5.
- Image:`CentOS 6.9 32-bit`
- `Next` -> `Agree to Agreement` -> `Activate` -> `Wait for instance creation to complete` -> `More` -> `Image/OS` -> `Create Custom Image`
- `Create and wait for completion` -> `Left tab menu` -> `Images` -> `Custom Images` -> `Shared Images` -> `Target: Lightweight Application Server` -> `OK`
- `Wait for sharing to complete` -> `Destroy and release CVM instance`
- `Lightweight Application Server` -> `Reinstall OS` -> `Custom Image` -> `Select Shared Custom Image`

---

## Setting Up Asktao 1.60 on CentOS

### 1. System Requirements

**Note**: The setup was only done on CentOS 6.9 and 7.6 versions, and there are slight differences between 32-bit and 64-bit environments, which will be noted later.

- System: `CentOS`
- Environment: `32-bit/64-bit`
- Version: `6.9/7.6`
- MySQL: `5.6±`

---

### 2. Install MySQL

#### - CentOS 6.9

**Note**: Execute the following commands step by step in the shell.

- Install MySQL:
  - `yum -y install mysql-server`
- Enable MySQL to start on boot:
  - `chkconfig mysqld on`
- Start MySQL:
  - `service mysqld start`
- Login to MySQL (default empty password):
  - `mysql -u root`
- Query the password:
  - `select user,host,password from mysql.user;`
- Set local login password:
  - `set password for root@localhost=password('123456');`
- Create a user for remote login:
  - `grant all privileges on *.* to 'asktao'@'%' identified by 'USnzb2tw73BG' with grant option;`
- Refresh privileges:
  - `flush privileges;`
- Exit MySQL:
  - `exit`
- Set the number of connections:
  - Open the `my.cnf` file -> Add the following under `[mysqld]`:
  - `max_connections=6000`
- Reboot the server:
  - `reboot`

#### - CentOS 7.6

**Note**: Execute the following commands step by step in the shell.

- Add the official MySQL YUM repository:
  - `sudo rpm -Uvh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm`
- Enable MySQL repository:
  - `sudo yum-config-manager --disable mysql57-community`
  - `sudo yum-config-manager --enable mysql56-community`
- Install MySQL:
  - `sudo yum install mysql-community-server`
- Start the MySQL service:
  - `sudo systemctl start mysqld`
- Enable MySQL to start on boot:
  - `sudo systemctl enable mysqld`
- Login to MySQL (default empty password):
  - `mysql -u root`
- Query the password:
  - `select user,host,password from mysql.user;`
- Set local login password:
  - `set password for root@localhost=password('123456');`
- Create a user for remote login:
  - `grant all privileges on *.* to 'asktao'@'%' identified by 'USnzb2tw73BG' with grant option;`
- Refresh privileges:
  - `flush privileges;`
- Exit MySQL:
  - `exit`
- Set the number of connections:
  - Open the `my.cnf` file -> Add the following under `[mysqld]`:
  - `max_connections=6000`
- Reboot the server:
  - `reboot`

---

### 3. Create Databases

**Note**: Use `Navicat` to connect to the database, uncheck `Use MySQL character set` in the `Advanced` tab, then select encoding `936 (ANSI/OEM - Simplified Chinese GBK)` and connect.

- The `sql` folder contains the following files:

| ID | Filename         | Corresponding Database |
|----|------------------|------------------------|
| 1  | dl_adb_all.sql   | dl_adb_all             |
| 2  | dl_ddb_all.sql   | dl_ddb_all             |
| 3  | dl_dmdb_all.sql  | dl_dmdb_all            |
| 4  | dl_ldb_all.sql   | dl_ldb_all             |
| 5  | dl_mdb_all.sql   | dl_mdb_all             |
| 6  | dl_tdb_all.sql   | dl_tdb_all             |

- **Open `dl_tdb_all.sql` and modify the IP address, replacing `111.111.111.111` with your server's IP address.**
- **Create databases as per the above table, and import the corresponding SQL files.**

---

### 4. Open Ports

**Note**: The server needs to open ports to allow the client to connect to the game server.

- 3306: The `database port` should allow access from the GM tool's user IP.
- 8110: The `server port` should only be accessible from the server's IP.
- 8120: The `server port` should only be accessible from the server's IP.
- 8101: The `login port` should be accessible from all IPs.
- 8160: The `line port` should be accessible from all IPs.
- 8161: The `line port` should be accessible from all IPs.
- If additional lines are added, their corresponding ports should also be exposed.

---

### 5. Server Configuration

**Note**: Modify the server configuration files, then package them as a `zip` file and upload them to the server path `/home/`.

- aaa: `\WDServer\aaa\aaa\aaa.ini`
- dba: `\WDServer\dba\dba\dba.ini`
- ccs: `\WDServer\ccs\ccs\ccs.ini`
- csa: `\WDServer\csa\csa\csa.ini`
- gs1: `\WDServer\gs1\gs\gs.ini`
- gs2: `\WDServer\gs2\gs\gs.ini`
- Replace the IP address `111.111.111.111` in the above configuration files with your server's IP address.
- The default local connection password in the configuration files is `123456`, so if the database password is changed, it needs to be updated in the above files as well.
- The configuration files corresponding to GS contain line names, ports, etc., which should match the entries in the `dl_adb_all.server` table in the database.
- After completing the above steps, compress the folder into a `zip` file and upload it to the `/home/` path on the server.

---

### 6. Start the Server

64-bit systems require the following dependencies:
**Install the 32-bit environment**: `sudo yum install xulrunner.i686`

---

**Note**: First, extract the uploaded server files, and then start the server step by step.

- **Extract the server:**
  - `cd /home/ && unzip your_compressed_folder_name.zip`
- **Set permissions:**
  - `chmod -R 777 /home/`
- **Start the server:**
  - `cd /home/WDServer/1 && ./1`
  - `cd /home/WDServer/aaa && ./runaaa`
  - `cd /home/WDServer/dba && ./rundba`
  - `cd /home/WDServer/ccs && ./runccs`
  - `cd /home/WDServer/csa && ./runcsa`
  - `cd /home/WDServer/gs1 && ./rungs`
  - `cd /home/WDServer/gs2 && ./rungs`
- **Each time a command is executed in the shell, open a new session to execute the next one.**
- When executing `aaa` to `csa`, the yellow `Driver load ok` message indicates that the step has completed.
- When executing `gs`, if it shows `Game server allows user to login now`, it means the server has started successfully.
  
