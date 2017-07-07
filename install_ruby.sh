#!/bin/bash

# Check if the environment has been prepared beforehand
if [ ! -f /.ruby-initialized ]; then
    echo "Initializing rbenv / ruby"
    # Install rbenv
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    export PATH="$HOME/.rbenv/bin:$PATH"
    ~/.rbenv/bin/rbenv init
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    eval "$(rbenv init -)"

    # Now compile and install ruby 2.3.3-p222
    rbenv install 2.3.3-p222
    rbenv shell 2.3.3-p222

    # Now install dependencies
    echo "gem: --no-rdoc --no-ri" > ~/.gemrc
    gem install bundler
    rbenv rehash

    touch /.ruby-initialized
fi

echo "Running rails server..."

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
rbenv shell 2.3.3-p222
