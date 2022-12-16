echo "Running start.sh"
date
printenv
printenv >> /etc/environment
# echo '* * * * * /work/task.sh > /proc/1/fd/1 2>&1' > /etc/crontabs/root
/work/task.sh
crond -f
