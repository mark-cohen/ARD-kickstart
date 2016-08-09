#!/bin/sh

ARD="/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart"

$ARD -configure -activate
$ARD -configure -access -on
$ARD -configure -allowAccessFor -specifiedUsers
$ARD -configure -access -on -users "admin" 
$ARD -configure -privs -DeleteFiles -ControlObserve -TextMessages -OpenQuitApps -GenerateReports -RestartShutDown -SendFiles -ChangeSettings
# $ARD -configure -users "staff" -access -off


exit 0
