#!/bin/bash

git init
git add -A .
git config user.name "{{ cookiecutter.full_name }}"
git config user.email "{{ cookiecutter.email_address }}"
git commit -m 'Initial commit after generating formula from https://gitlab.com/stooj/saltstack-formula-cookiecutter'
git push --set-upstream git@odo.stooj.org:team-ginstoo/$(git rev-parse --show-toplevel | xargs basename).git $(git rev-parse --abbrev-ref HEAD)
git push --set-upstream git@gitlab.com:stooj/$(git rev-parse --show-toplevel | xargs basename).git $(git rev-parse --abbrev-ref HEAD)
git remote add gitlab git@gitlab.com:stooj/$(git rev-parse --show-toplevel | xargs basename).git
