# egghead-styles

Holds the master stylesheet for all of egghead. Clone into the same directory as `egghead-systems` and `egghead-rails`

## First things first

Setup all required dependencies. Run: `npm i && bundle install`

## How to publish

Before you can publish to NPM or RubyGems, you must first authenticate with each service.

### Log into NPM and RubyGems

Perform the following commands within the `egghead-styles` directory and login to NPM with your egghead account that has publishing privileges. Contact an egghead admin for publishing access if needed.

* `npm login`
* `gem push` (this will produce a "Please specify a gem name on the command line" error, ignore it)

### Building the packages

The `deploy` script is responsible for bumping versions and publishing to NPM/RubyGems. There are two flags which enable this:

* `./deploy -b, --bump <major, minor, patch>`
* `./deploy -p, --publish`

For instance, to provide a patch bump and publish, use `./deploy -b patch -p`

## Local Development

`egghead-styles` has the same setup as `egghead-rails` in that `egghead-systems` references both from the same root directory. By default, the Gemfile points to `egghead-styles'` repository and will pull the gem from Github if it cannot find a substitute. This isn't conducive for local development as it would require redeploying the gem for every change.

For local development we want rails to see live changes to the egghead-styles app. To do this, change the `@import "egghead-styles"` statement in `application.css.scss` to:

`@import "/egghead-styles/app/assets/stylesheets/egghead-styles";`

Vagrant mounts `egghead-styles` to the root of the VM at `/egghead-styles`. Changes to the local copy will now reflect in development. Run `foreman` as usual.

*!IMPORTANT* Do not forget to change this line back after completing your work as it will break production.


