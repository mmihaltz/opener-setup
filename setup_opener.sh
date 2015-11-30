#!/bin/bash

# Install OpeNER components and dependencies
# Based on http://www.opener-project.eu/getting-started/how-to/local-installation.html
# Verified on Ubuntu (14.04)

# Install Oracle Java
# Warning, user interaction required during setup! (Accept licence)
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Install JRuby
wget https://s3.amazonaws.com/jruby.org/downloads/1.7.23/jruby-bin-1.7.23.tar.gz
mkdir -p bin
tar -xzf jruby-bin-1.7.23.tar.gz -C bin
JRPATH=`pwd`/bin/jruby-1.7.23/bin
export PATH="$PATH:$JRPATH"
echo Please add PATH=\$PATH:$JRPATH to your .profile or .bashrc file!

# Install libarchive
sudo apt-get install libarchive-dev

# Install bundler gem
gem install bundler

# Set up a python virtualenv
virtualenv -p python2.7 openerenv
. openerenv/bin/activate

# Install required python packages
pip install lxml

# Install OpeNER components
gem install opener-language-identifier
gem install opener-tokenizer
gem install opener-pos-tagger
gem install opener-tree-tagger
gem install opener-property-tagger
gem install opener-polarity-tagger
gem install opener-opinion-detector
gem install opener-opinion-detector-basic
gem install opener-kaf2json
gem install opener-scorer
