#!/bin/bash
at now + 10 minutes < ./1.sh
sudo -u root at now + 10 minutes < ./1.sh
sudo -u root atq


# for user in $(cut -d':' -f1 /etc/passwd); do sudo crontab -u $user -l; done
#поставить задание с помощью at и научиться находить все задания at всех пользователей и выводить кто, на какое время и что запланировал.
