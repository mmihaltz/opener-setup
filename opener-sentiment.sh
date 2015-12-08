#!/bin/bash

# Make sure jruby path is in PATH!

#Activate virtualenv
#. openerenv/bin/activate

cat $1 | language-identifier | tokenizer | pos-tagger | polarity-tagger | opinion-detector-basic | property-tagger
#| scorer
#| kaf2json
