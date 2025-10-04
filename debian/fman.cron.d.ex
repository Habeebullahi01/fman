#
# Regular cron jobs for the fman package.
#
0 4	* * *	root	[ -x /usr/bin/fman_maintenance ] && /usr/bin/fman_maintenance
