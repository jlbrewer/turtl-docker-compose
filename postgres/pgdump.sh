#!/bin/sh
pg_dump turtl:bSzhmXmuASP7VAxK@localhost turtl > /backups/turtl-`date +%F`.sql
find -name /backups/*.sql -mtime 14 -exec rm ;
