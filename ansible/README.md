# What Is This

Ansible playbooks to configure a Fedora workstation with the basics.

## How To Use

```
./bootstrap.sh
. venv/bin/activate
ansible-playbook <playbookyouwant.yml>
```

## Notes

The playbooks are using `raw` because the ansible `dnf` module fails even with python3-dnf installed, and I don't have time to troubleshoot that.

# fatal: [127.0.0.1]: FAILED! => {"changed": false, "msg": "Could not import the dnf python module. Please install `python3-dnf` package.", "results": []}

