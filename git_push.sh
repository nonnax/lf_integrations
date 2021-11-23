#!/usr/bin/env ruby
# Id$ nonnax 2021-11-23 10:52:27 +0800
# The point of this helper is to reduce the number of times you must type your username or password. For example:
# 
# $ git config credential.helper store
# $ git push http://example.com/repo.git
# Username: <type your username>
# Password: <type your password>
# 
# [several days later]
# $ git push http://example.com/repo.git
# [your credentials are used automatically]
