# Ruboty::Gekiron (激論)

[![Build Status](https://travis-ci.org/rhythnn/ruboty-gekiron.svg?branch=master)](https://travis-ci.org/rhythnn/ruboty-gekiron)

Roboty handler to generate conversation topic.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-gekiron'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install ruboty-gekiron
```

Then, create topics yaml file `./config/topics.yml` in your bot code repository (or, specify file path by `TOPICS_YAML_FILE_PATH`)

```yaml
# example
- テンションが上がるもの
- 今流行っているもの
- さらりと言えたらかっこいい言葉
```

## Usage

```
@ruboty help
/gekiron/ - 激論しそうな話題を返します
ruboty /topic|gekiron|激論/ - 激論しそうな話題を返します

@ruboty gekiron
「ふ」から始まる、テンションが上がるものは？

gekiron
「な」から始まる、さらりと言えたらかっこいい言葉は？
```

## ENV
```
TOPICS_YAML_FILE_PATH  - Topics file path (default: ./config/topics.yml)
```
