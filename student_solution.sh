#!/bin/bash

# ============================================================
# SELinux Permanent File Context Assignment
# ============================================================
#
# Student Name:HASAN MOHAMMED S
# Register Number:1U24IT041
#
# ============================================================

set -u

echo "=========================================="
echo " SELinux Permanent File Context Assignment"
echo "=========================================="

# ------------------------------------------------------------
# TODO 1:
# Create the directory /webdata/files
# ------------------------------------------------------------
sudo mkdir -p /webdata/files


# ------------------------------------------------------------
# TODO 2:
# Create the file /webdata/files/index.html
# ------------------------------------------------------------
sudo touch /webdata/files/index.html


# ------------------------------------------------------------
# TODO 3:
# Display the current SELinux context
# of /webdata and index.html
# ------------------------------------------------------------
ls -Zd /webdata
ls -Z /webdata/files/index.html


# ------------------------------------------------------------
# TODO 4:
# Add a permanent SELinux file-context rule.
#
# Required:
#   Directory pattern : /webdata(/.*)?
#   SELinux type      : httpd_sys_content_t
#
# ------------------------------------------------------------
sudo semanage fcontext -a -t httpd_sys_content_t '/webdata(/.*)?'


# ------------------------------------------------------------
# TODO 5:
# Apply the permanent SELinux rule
# using restorecon recursively.
# ------------------------------------------------------------
sudo restorecon -Rv /webdata


# ------------------------------------------------------------
# TODO 6:
# Verify the final SELinux contexts
# of /webdata and index.html
# ------------------------------------------------------------
ls -Zd /webdata
ls -Z /webdata/files/index.html


echo "=========================================="
echo " Assignment completed"
echo "=========================================="

exit 0

