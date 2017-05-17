#!/bin/sh
ssh forge@orchestrator.rtx.ninja /home/forge/orchestrator/current_release/dynamic_inventory.sh $@
#cd /home/bosco/ownCloud/TH/Master/orchestrator && ssh -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i .vagrant/machines/default/virtualbox/private_key vagrant@localhost -p `vagrant ssh-config | grep Port | grep -o '[0-9]\+'` /home/vagrant/orchestrator/dynamic_inventory.sh $@
