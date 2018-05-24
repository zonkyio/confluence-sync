Autoupdate confluence from git README
=====================================

You can use it to sync your git documentation to confluence PRECREATED page


How does it work
----------------
- start docker container with all tools
- by command **update-confluence** convert and upload file to confluence


How to use it in pipeline
-------------------------

When you would like to sync documentation just on merge/push to master, put to bitbucket-pipeline.yml code like this:

set env variable JIRA_USER and JIRA_PASSWORD to allow updater write access to page


    image: iapp/confluence-sync

    pipelines:
      branches:
        master:
        - step:
          script:
            - update-confluence README.md TICKET_ID "Autoupdate documentation from git repo" 
            - update-confluence README2.md TICKET_ID2 "Autoupdate documentation from git repo"



-- version 0.10