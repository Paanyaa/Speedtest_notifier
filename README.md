# Speedtest_notifier
It notifies you, your network speed at a certain interval of time (for ubuntu right now) thorugh notifications.
You can set its interval as 1 minute or 1 hour.

# For Ubuntu

## Installation
1.Clone Repository.
```Bash
  git clone https://github.com/Paanyaa/Speedtest_notifier.git
```
2.Change Directory.
```Bash
  cd Speedtest_notifier
```
3.Install and Run speedtest_notify.sh file.
```Bash
  chmod +x speedtest_notify.sh
  ~/speedtest_notify.sh
```
4.Wait for few seconds and notification will pop up.

Atfter installatoin lets set its interval

## Set Interval
1.Open crontab to set interval
```Bash
  crontab -e
```
2.Copy paste below lines
```Bash
DISPLAY=:0
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

* * * * * /home/UserName/speedtest_notify.sh
```
To set the interval, you will need to use the correct path based on your system's user directory. 

Replace `UserName` with your actual username in the following command:

```sh
* * * * * /home/UserName/speedtest_notify.sh
```
## Customise interval

1. For setting interval as 1 Minute don't make any changes in above line

2. For setting interval as 1 Hour make changes in last line
```Bash
0 * * * * /home/UserName/speedtest_notify.sh
```
To change the existing interval you will need to use the correct path based on your system's user directory. 

Replace `UserName` with your actual username in the following command:

```sh
0 * * * * /home/UserName/speedtest_notify.sh
```

# For Windows

### `<Its a bit complicated but worth it>`

## Enable Scripts

1.Set Script Execution Policy
```bash
  Set-ExecutionPolicy RemoteSigned
```
Press Y to continue.

2.Set-ExecutionPolicy RemoteSigned
```Bash
  Install-Module -Name BurntToast -Force
```
Press Y to continue.

Now Scripts are enable on Windows

## Installation Guide

#### When you add any new file to `Local Disk C` you need to grant adminstartive premission.

1.Install Speedtest CLI

Click on [Speedtest CLI](https://www.speedtest.net/apps/cli) to install .exe file and then scroll down 

![Screenshot (13)](https://github.com/user-attachments/assets/36f940e4-612d-438e-add4-83a4b041ba18)
Select `Download for Windows`

It will imediately start downloading Speedtext CLI.

2.Open Downloads and extract zip of Speedtest it may come with name `ookla-speedtest-1.2.0-win64` version may vary.

3.Open the extracted file,

Select SpeedTest `Application` cut it and paste it in `Local Disk C` no need to put in any folder.

4.Download [SpeedtestNotifier.ps1](SpeedtestNotifier.ps1) file from my respo.

5.Open Downloads ,Cut SpeedtestNotifier.ps1 file and paste it in `Local Disk C` no need to put in any folder.

![Screenshot (15)](https://github.com/user-attachments/assets/09a39a3f-8c58-42bd-b8c5-4615ccff01b5)

6.Now open `Command Prompt ` as Adminstrator

And run command
```Bash
  powershell -File "C:\SpeedtestNotifier.ps1"
```
To run the Script.

7.Wait for few Seconds

![Screenshot (16)](https://github.com/user-attachments/assets/844762ef-c6bd-468e-a602-b8113739e1a3)

## Schedule script with a certain interval

1.Click on Search and Type Task Scheduler and Open it.

![Screenshot (17)](https://github.com/user-attachments/assets/b684b27b-a1f2-46e0-9db8-9a049c57dd94)

2.Create a Basic Task

![Screenshot (18)](https://github.com/user-attachments/assets/a9796559-b4b1-42f9-b6e0-c87081689eb1)


Name: 
```sh
Network Speed Test Notifier
```


Trigger: 
```sh
Daily
```
, at the desired interval time.


Action: 
```sh
Start a program
```


Program/script: 
```sh
powershell
```


Add arguments: 
```sh 
-File "C:\SpeedtestNotifier.ps1"
```

