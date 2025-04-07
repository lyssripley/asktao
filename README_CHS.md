# [腾讯云](https://cloud.tencent.com) `Asktao 1.60` 安装文档

[《Asktao》](https://wd.gyyx.cn) 讲述了史纪娘娘复生的故事。她在太一真人的手下，因受到解派掌门人的暗中帮助，被困在骷髅山的山顶变成了一块顽石。她计划招募弟子、吸引人才，联手西方教派等各方势力，准备在即将来临的仙界大劫中与禅宗展开最终的较量。

---

# [腾讯云](https://cloud.tencent.com) 切换到 CentOS 6.9

**注意**：由于轻量应用服务器当前仅支持 7.6 版本，使用 CentOS 6.9（32 位版）需要进行一些小技巧。

- 首先创建一个 CVM 实例：`CVM`->`立即购买`->`自定义配置`->`按量计费`
- 地区：选择轻量应用服务器所在的区域，例如如果轻量应用服务器位于上海 5 区，则选择上海 5 区。
- 镜像：`CentOS 6.9 32 位`
- `下一步` -> `同意协议` -> `激活` -> `等待实例创建完成` -> `更多` -> `镜像/操作系统` -> `创建自定义镜像`
- `创建并等待完成` -> `左侧菜单` -> `镜像` -> `自定义镜像` -> `共享镜像` -> `目标：轻量应用服务器` -> `确定`
- `等待共享完成` -> `销毁并释放 CVM 实例`
- `轻量应用服务器` -> `重新安装操作系统` -> `自定义镜像` -> `选择共享自定义镜像`

---

## 在 CentOS 上设置 Asktao 1.60

### 1. 系统要求

**注意**：本次安装仅在 CentOS 6.9 和 7.6 版本上完成，并且在 32 位和 64 位环境之间略有差异，稍后会注明。

- 系统：`CentOS`
- 环境：`32 位/64 位`
- 版本：`6.9/7.6`
- MySQL：`5.6±`

---

### 2. 安装 MySQL

#### - CentOS 6.9

**注意**：按照以下命令逐步在 shell 中执行。

- 安装 MySQL：
  - `yum -y install mysql-server`
- 设置 MySQL 开机启动：
  - `chkconfig mysqld on`
- 启动 MySQL：
  - `service mysqld start`
- 登录 MySQL（默认空密码）：
  - `mysql -u root`
- 查询密码：
  - `select user,host,password from mysql.user;`
- 设置本地登录密码：
  - `set password for root@localhost=password('123456');`
- 创建远程登录用户：
  - `grant all privileges on *.* to 'asktao'@'%' identified by 'USnzb2tw73BG' with grant option;`
- 刷新权限：
  - `flush privileges;`
- 退出 MySQL：
  - `exit`
- 设置连接数：
  - 打开 `my.cnf` 文件 -> 在 `[mysqld]` 下添加以下内容：
  - `max_connections=6000`
- 重启服务器：
  - `reboot`

#### - CentOS 7.6

**注意**：按照以下命令逐步在 shell 中执行。

- 添加官方 MySQL YUM 仓库：
  - `sudo rpm -Uvh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm`
- 启用 MySQL 仓库：
  - `sudo yum-config-manager --disable mysql57-community`
  - `sudo yum-config-manager --enable mysql56-community`
- 安装 MySQL：
  - `sudo yum install mysql-community-server`
- 启动 MySQL 服务：
  - `sudo systemctl start mysqld`
- 设置 MySQL 开机启动：
  - `sudo systemctl enable mysqld`
- 登录 MySQL（默认空密码）：
  - `mysql -u root`
- 查询密码：
  - `select user,host,password from mysql.user;`
- 设置本地登录密码：
  - `set password for root@localhost=password('123456');`
- 创建远程登录用户：
  - `grant all privileges on *.* to 'asktao'@'%' identified by 'USnzb2tw73BG' with grant option;`
- 刷新权限：
  - `flush privileges;`
- 退出 MySQL：
  - `exit`
- 设置连接数：
  - 打开 `my.cnf` 文件 -> 在 `[mysqld]` 下添加以下内容：
  - `max_connections=6000`
- 重启服务器：
  - `reboot`

---

### 3. 创建数据库

**注意**：使用 `Navicat` 连接数据库，取消选中 `高级` 标签下的 `使用 MySQL 字符集`，然后选择编码 `936 (简体中文 GBK)` 并连接。

- `sql` 文件夹包含以下文件：

| ID  | 文件名           | 对应数据库       |
|-----|------------------|------------------|
| 1   | dl_adb_all.sql   | dl_adb_all       |
| 2   | dl_ddb_all.sql   | dl_ddb_all       |
| 3   | dl_dmdb_all.sql  | dl_dmdb_all      |
| 4   | dl_ldb_all.sql   | dl_ldb_all       |
| 5   | dl_mdb_all.sql   | dl_mdb_all       |
| 6   | dl_tdb_all.sql   | dl_tdb_all       |

- **打开 `dl_tdb_all.sql` 并修改 IP 地址，将 `111.111.111.111` 替换为您的服务器 IP 地址。**
- **按表格中的要求创建数据库，并导入相应的 SQL 文件。**

---

### 4. 开放端口

**注意**：服务器需要开放端口，以便客户端连接到游戏服务器。

- 3306：`数据库端口` 应允许 GM 工具用户 IP 访问。
- 8110：`服务器端口` 应仅允许服务器的 IP 访问。
- 8120：`服务器端口` 应仅允许服务器的 IP 访问。
- 8101：`登录端口` 应允许所有 IP 访问。
- 8160：`线路端口` 应允许所有 IP 访问。
- 8161：`线路端口` 应允许所有 IP 访问。
- 如果添加了额外线路，其对应端口也应开放。

---

### 5. 服务器配置

**注意**：修改服务器配置文件，然后将它们打包为 `zip` 文件并上传到服务器路径 `/home/`。

- aaa: `\WDServer\aaa\aaa\aaa.ini`
- dba: `\WDServer\dba\dba\dba.ini`
- ccs: `\WDServer\ccs\ccs\ccs.ini`
- csa: `\WDServer\csa\csa\csa.ini`
- gs1: `\WDServer\gs1\gs\gs.ini`
- gs2: `\WDServer\gs2\gs\gs.ini`
- 将上述配置文件中的 IP 地址 `111.111.111.111` 替换为您的服务器 IP 地址。
- 配置文件中的默认本地连接密码为 `123456`，因此如果数据库密码发生更改，配置文件中的密码也需要更新。
- 对应 GS 的配置文件中包含线路名称、端口等信息，应与数据库中的 `dl_adb_all.server` 表项匹配。
- 完成上述步骤后，将文件夹压缩为 `zip` 文件并上传到服务器的 `/home/` 路径下。

---

### 6. 启动服务器

64 位系统需要以下依赖：
**安装 32 位环境**：`sudo yum install xulrunner.i686`

---

**注意**：首先解压上传的服务器文件，然后按步骤启动服务器。

- **解压服务器文件：**
  - `cd /home/ && unzip your_compressed_folder_name.zip`
- **设置权限：**
  - `chmod -R 777 /home/`
- **启动服务器：**
  - `cd /home/WDServer/1 && ./1`
  - `cd /home/WDServer/aaa && ./runaaa`
  - `cd /home/WDServer/dba && ./rundba`
  - `cd /home/WDServer/ccs && ./runccs`
  - `cd /home/WDServer/csa && ./runcsa`
  - `cd /home/WDServer/gs1 && ./rungs`
  - `cd /home/WDServer/gs2 && ./rungs`
- **每次在 shell 中执行命令时，打开一个新的会话以执行下一个命令。**
- 执行 `aaa` 到 `csa` 时，显示黄色 `Driver load ok` 表示该步骤已完成。
- 执行 `gs` 时，如果显示 `Game server allows user to login now`，则表示服务器已成功启动。
