# Automounting an USB device

After untaring the archive, run the following:

```bash
# systemctl daemon-reload
# systemctl restart remote-fs.target
# systemctl restart local-fs.target
# cp usr/bin/minidlna.restart /usr/bin/
```

## at(1)

Install the `at` utilities:

```bash
# dnf install -q -y at
```

## udev

Add the rule found here (edit, if needed) and then reload rules

```bash
# cp etc/udev/rules.d/90-mediausb.rules
# udevadm control --reload-rules
```

## Firewall

```bash
$ firewall-cmd --list-ports
1900/udp
$ firewall-cmd --list-services
http mdns
```
