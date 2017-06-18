# Ruboty::Gekiron

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

Then, create topics yaml file `./config/topics.yml` in your bot code repository

```yaml
# example
- テンションが上がるもの
- オシャレな言葉
- さらりと言えたらかっこいい言葉
```

## Usage

```
@ruboty topic
「ふ」から始まる、テンションが上がるものは？
```

## ENV
```
TOPICS_YML  - Topics file path (default: ./config/topics.yml)
```
