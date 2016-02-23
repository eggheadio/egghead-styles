# egghead-styles

Holds the master stylesheet for all of egghead. Clone into the same directory as `egghead-systems` and `egghead-rails`

## First things first

Setup all required dependencies. Run: `npm i && bundle install`

## How to publish

Before you can publish to NPM or RubyGems, you must first authenticate with each service.

### NPM

Type `npm login` within the `egghead-styles` directory and login to NPM with your egghead account that has publishing privileges. Contact an egghead admin for publishing access if needed.

### RubyGems



## Local Development

`egghead-styles` has the same setup as `egghead-rails` in that `egghead-systems` references both from the same root directory. By default, the Gemfile points to `egghead-styles'` repository and will pull the gem from Github if it cannot find a substitute. This isn't conducive for local development as it would require redeploying the gem for every change.

For local development, we want `bundle` to see live changes to the gem. Tell `bundle` to reference the local repository. Run the following inside the VM's `/app` directory:

`bundle config local.egghead-styles /egghead-styles`

Vagrant mounts `egghead-styles` to the root of the VM at `/egghead-styles`. Changes to the local copy will now reflect in development. Run `foreman` as usual.

To compile the gem withou publishing, use the `-s` (--silent) flag when deploying `./deploy -s`

#### References

Source [here](http://bundler.io/v1.3/git.html)


