# Wunder theme

See [drupal-project](https://github.com/wunderio/drupal-project) documentation for the up-to-date information, including all available Lando services.

## Local environment / DDEV

### Setting up

1. Install DDEV and its dependencies (https://ddev.com/get-started/)
2. Run `ddev start` to start the local environment
3. Run `ddev composer install` to install packages
4. Run `ddev import-db --file=mydb.sql.gz` to import the database or install the site from scratch: `ddev drush si --existing-config`
5. Run `ddev build-frontend` to build the custom Wunder theme

#### Running the theme

1. Go to the custom theme folder `cd web/themes/custom/wunder-theme`.
2. Run `ddev npm i`.
3. Run `ddev npm run develop`. This starts the Storybook and Webpack servers. Storybook is available on `https://internal-wunder-theme.ddev.site:6006`.
4. If you want to only watch SCSS changes without running Storybook and Webpack, run `ddev npm sass-dev`.
5. The stories written in Twig needs to be generated to JSON files for Storybook. To do this and watch new changes in the stories, enter the ddev container with `ddev ssh` and run `watch --color drush storybook:generate-all-stories`. If you want only to compile the JSON files without watching, run `drush strorybook:generate-all-stories`. TODO: Include this into the theme build and run processes.

### Running tests

To run acceptance tests, run `ddev codecept` and pass the arguments as you wish (for example `ddev codecept run Acceptance --debug`).

The tests have a VNC that allows you to see the browser while the tests are running. To access it, see the message at the start of the output of `ddev codecept`.

## Local environment / Lando

### Setting up

1. Install Lando and its dependencies (https://lando.dev/download/)
2. Run `lando start` to start the local environment
3. Run `lando composer install` to install packages
4. Run `lando db-import mydb.sql.gz` to import the database or install the site from scratch: `lando drush si --existing-config`
5. Run `lando build-frontend` to build the custom Wunder theme

### Running tests

To run Codeception tests, use the lando command `lando codecept` and pass the arguments as you wish (for example `lando codecept run Acceptance --debug`).
