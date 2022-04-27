# Setup my own client machine or user
This tool setup my own local machine or user.
This is only for me, not for the general public.

# How to use
1. copy and edit a variable file

        $ cp vars.yml overriding_vars.yml
        $ vim overriding_vars.yml

2. apply

        # ansible-playbook setup_machine.yml -K
            or
        $ ansible-playbook setup_user.yml
