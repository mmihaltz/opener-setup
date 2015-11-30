#!/bin/bash

# Make sure jruby path is in PATH!

#Activate virtualenv
#. openerenv/bin/activate

echo "I love this idea about sad droids." | language-identifier | tokenizer | pos-tagger | polarity-tagger
