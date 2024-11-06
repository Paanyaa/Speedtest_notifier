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
0 * * * * /home/panyaa/speedtest_notify.sh
```
To change the existing interval you will need to use the correct path based on your system's user directory. 

Replace `UserName` with your actual username in the following command:

```sh
0 * * * * /home/UserName/speedtest_notify.sh
```

If you face any issues contact me.......
