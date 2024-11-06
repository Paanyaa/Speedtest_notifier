# Speedtest_notifier
It notifies you, your network speed at a certain interval of time (for ubuntu and windows) thorugh notifications.
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


![image](https://github.com/user-attachments/assets/f1afef26-11f5-4d20-8b5c-112a1d46ff0f)




# For Windows

### `<Its a bit complicated but worth it, you can use below command to run script manually.>`
```bash
   powershell -File "C:\SpeedtestNotifier.ps1"
```

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

2.Create a Task

![Screenshot (26)](https://github.com/user-attachments/assets/5c044e7a-fda3-4716-9de7-99376e69f99d)

2.1)Name: 
```sh
Network Speed Test Notifier
```

![Screenshot (27)](https://github.com/user-attachments/assets/19339bdc-3daa-4414-9033-b91d999a2c19)

Select Run with Priviledge(Sometimes may not work with priviledge.)


2.2)Trigger: 

Click NEW
```sh
At log on
```
, at the desired interval time.

![Screenshot (30)](https://github.com/user-attachments/assets/b89990d7-4a45-4395-8913-68453ba40bb8)

Repeat task every :`as per your need`
Press Ok


2.3)Action: 

Click NEW
```sh
Start a program
```

![Screenshot (22)](https://github.com/user-attachments/assets/1cd24397-39a0-431c-bab6-84431a53dd84)

Clicl OK

2.4)Action

Click NEW

2.4.1)Program/script:
```sh
powershell
```

2.4.2)Add arguments: 
```sh 
-WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "C:\SpeedtestNotifier.ps1"
```

![Screenshot (31)](https://github.com/user-attachments/assets/b995036e-2719-459a-967a-4b097375b7d6)

Click OK

2.5)Don't make any changes in Condition, Setting and Histroy

![Screenshot (32)](https://github.com/user-attachments/assets/c75dcf95-83b3-46fe-adc3-51369b881c3d)

Click OK

3)Reboot your PC and check if this notificatoin pops.

![Screenshot (33)](https://github.com/user-attachments/assets/a0bf1de8-befa-4d21-8a9d-05287fb361d0)

If you face any problem contact me.....
