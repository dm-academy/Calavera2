#!/bin/bash

# run this command but don't display output
# instead capture return code
# if 0 then success
# non zero then not
# if non zero, then THIS script returns non zero
# review usage of stdout, stderr
curl http://localhost:10005/welcome.html
