## Credentials
Getting started using Rails credentials

### EDITOR environment variable
An editor environment variable is require, exporting makes that editor the default everywhere
```export EDITOR=sublime```
OR
``EDITOR=vim bundle exec rails credentials:edit``

### To edit the credentials file

```bin/rails credentials:edit```
```bin/rails credentials:edit -e production```
This command will create a credentials file if it does not exist
It will also create ```config/master.key``` if no master key is defined
# Do not commit the master key

Secrets kept in the credentials file via ```Rails.application.credentials```
### Given
```
secret_key_base: 3b7cd72...
some_api_key: SOMEKEY
system:
    access_key_id: 1234AB
```
``Rails.application.credentials.some_api_key`` returns ``"SOMEKEY"``
``Rails.application.credentials.system.access_key_id`` returns ``"1234AB"``

## Steps to set up locally
1. pull and update to download checked in credentials file
2. create ``config/master.key`` and place production's master.key within
3. set EDITOR environment variable or include EDITOR in below command (``EDITOR=vim bin/rails credentials:edit``)
4. run ``bin/rails credentials:edit`` to verify your master key is working
