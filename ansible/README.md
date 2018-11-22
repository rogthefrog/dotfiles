# What Is This

Ansible playbooks to configure a Fedora workstation with the basics.

## How To Use

```
./bootstrap.sh
. venv/bin/activate
ansible-playbook <playbookyouwant.yml>
```

## Notes

The playbooks specify the system python interpreter because when using the
virtual environment's python interpreter, even with python3-dnf and selinux libraries
installed system-wide, the ansible `dnf` module and the `template` command fail

# fatal: [127.0.0.1]: FAILED! => {"changed": false, "msg": "Could not import the dnf python module. Please install `python3-dnf` package.", "results": []}
