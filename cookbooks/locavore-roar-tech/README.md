locavore-roar-tech Cookbook
===========================

Installs a CentOS-based server to run oursignal https://github.com/vdog/oursignal

Setup:
```
	knife ec2 server create --image ami-05355a6c --flavor t1.micro -G $SecurityGroup -x $SSH_USER -N $NodeName -i $SSH_PEM -A $APIID -K $AccessKey -S $SecurityKeyPairName
	knife node run_list add $NodeName "recipe[locavore-roar-tech::oursignal]" 
	knife ssh "name:$NodeName" "sudo chef-client" -x ec2-user -i $SSH_PEM
```

Applying Changes:
```
	# run these in the repo that changed:  source or chef-reop
	git commit -a -m 
	git push -u origin master
	# run this for changes in the chef-repo only
	knife cookbook upload locavore-roar-tech
	# push the config and source changes to production
	knife ssh "name:$NodeName" "sudo chef-client" -x ec2-user -i $SSH_PEM
```
These 7 commands are the basic DevOps play.  
* A repeatable build process from 'bare metal'.
* Complete change tracking for source and configuration management.
* Chef and Git are the sources of truth.
* Knife serves as command and control.

From here we can continue with adding monitoring, logging, and alerting automatically.  And whatever else our snowflake of an infrastructure may eventually need.

