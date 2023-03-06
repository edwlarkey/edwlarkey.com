#!/usr/bin/env bash

hugo
tar -C public -cvz . >| site.tar.gz
hut pages publish -d edwlarkey.com site.tar.gz
