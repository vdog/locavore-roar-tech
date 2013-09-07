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
	git commit -a -m 
	git push -u origin master
	knife cookbook upload locavore-roar-tech
	knife ssh "name:$NodeName" "sudo chef-client" -x ec2-user -i $SSH_PEM
```

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - locavore-roar-tech needs toaster to brown your bagel.

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### locavore-roar-tech::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['locavore-roar-tech']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### locavore-roar-tech::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `locavore-roar-tech` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[locavore-roar-tech]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
