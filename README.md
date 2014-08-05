# Allure RSpec Example
This example demonstrates how to use Allure [RSpec](http://rspec.info/) adaptor.

## Usage
To launch this example you should install Ruby and the allure-rspec gem. 

### 1. Install RVM:

```bash
\curl -L https://get.rvm.io | bash -s stable
. ~/.bashrc
```

If you are the Mac user, perhaps you will need to add theese lines into your .bashrc file manually:

```bash
if [[ -d "$HOME/.rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm"
fi
```

### 2. Install Ruby
```bash
rvm install ruby-2.0
rvm use ruby-2.0
```

### 4. Install bundler
```bash
gem install bundler
```

### 5. Install all the required dependencies
```bash
bundle install
```

### 6. Run the specs
```bash
$ rspec
```
You should see failed tests and generated Allure XML files in **allure** directory.
