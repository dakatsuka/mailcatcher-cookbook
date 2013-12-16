# MailCatcher Cookbook
This cookbook install MailCatcher.


## Requirements
### cookbooks
- `build-essential`
- `rbenv`

## Attributes
### mailcatcher::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:user]</tt></td>
    <td>string</td>
    <td>User that MailCatcher will run as.</td>
    <td><tt>mailcatcher</tt></td>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:group]</tt></td>
    <td>string</td>
    <td>Group for MailCatcher</td>
    <td><tt>mailcatcher</tt></td>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:pid_file]</tt></td>
    <td>string</td>
    <td>Location of PID file</td>
    <td><tt>/var/run/mailcatcher/mailcatcher.pid</tt></td>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:http_ip]</tt></td>
    <td>string</td>
    <td>IP address of the HTTP</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:http_port]</tt></td>
    <td>string</td>
    <td>Port of the HTTP</td>
    <td><tt>1080</tt></td>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:smtp_ip]</tt></td>
    <td>string</td>
    <td>IP address of the SMTP</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>[:mailcatcher][:smtp_port]</tt></td>
    <td>string</td>
    <td>Port of the SMTP</td>
    <td><tt>1025</tt></td>
  </tr>
</table>

## Usage
### mailcatcher::default

Just include `mailcatcher` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[mailcatcher]"
  ]
}
```

### mailcatcher::php

Just include `mailcatcher::php` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[php]",
    "recipe[mailcatcher]",
    "recipe[mailcatcher::php]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: Dai Akatsuka <d.akatsuka@gmail.com>

License: Apache License, Version 2.0
