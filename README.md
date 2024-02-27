# Setup my own client machine or user
This tool setup my own local machine or user.
This is only for me, not for the general public.

# How to use
1. install required collections and roles

        $ ansible-galaxy role install -r requirements.yml
        $ ansible-galaxy collection install -r requirements.yml -p ./

2. copy and edit a variable file

        $ cp vars.yml overriding_vars.yml
        $ vim overriding_vars.yml

3. apply

        # ansible-playbook setup_machine.yml -K
            or
        $ ansible-playbook setup_user.yml
