# Allure RSpec Example

Warning!\
This example uses 2.13.5.rc version of adapter which has minor difference in configuration. For example with v2.13.4, refer to this [commit](https://github.com/allure-examples/allure-rspec-example/tree/de997776df969b6aa2591e51e6f392aded705afa)

This example demonstrates how to use Allure [RSpec](http://rspec.info/) adaptor.

## Usage

To launch this example you should install Ruby and the allure-rspec gem.

### 1. Clone this project

### 2. Install RVM

```bash
curl -L https://get.rvm.io | bash -s stable
```

If you are the Mac user, perhaps you will need to add these lines into your .bashrc file manually:

```bash
if [[ -d "$HOME/.rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm"
fi
```

### 3. Install Ruby

```bash
rvm install ruby-2.6
rvm use ruby-2.6
```

### 4. Install bundler

```bash
gem install bundler
```

### 5. Install all the required dependencies

```bash
bundle install
```

### 6. Run the specs in parallel

```bash
bundle exec rspec
```

You should see generated Allure json files in **report/allure-results** directory. Now you can generate the report using any of the [available facilities](https://docs.qameta.io/allure/#_reporting).
