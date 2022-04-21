# Build my client machine
This tool setup my local machine.
This is only for me, not the general public.

# How to use
1. copy and edit a variable file

        # cp vars.yml overriding_vars.yml
        # vim overriding_vars.yml

2. apply

        # ansible-playbook setup_machine.yml -K
            or
        $ ansible-playbook setup_user.yml
