#!/bin/bash --login

rvm use 2.3.1
rvm use 2.3.1@rails_demo

rails s -b 0.0.0.0 -p 3000


