# Allure RSpec Example

This example demonstrates how to use Allure [RSpec](http://rspec.info/) adaptor.

## Usage

To launch this example you should install Ruby and the allure-rspec gem.

### 1. Clone this project

### 2. Install rbenv

[Installation](https://github.com/rbenv/rbenv#installation)

### 3. Install Ruby

```bash
rbenv install 3.0.0
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
