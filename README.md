# Drupal 10 theme

A Drupal theme based on single directory components (SDC).

### Getting started

- Copy the theme files into `PROJECT_ROOT/web/themes/custom/`
- Add Drupal dependencies:
```
composer require drupal/storybook drupal/twig_field_value drupal/twig_tweak
drush en storybook twig_field_value twig_tweak -y
```

- Adjust Drupal setup to work with Storybook setup

Please follow the following instructions at [Drupal Storybook](https://www.drupal.org/project/storybook). "Drupal setup" section describes the required changes.

- Make it the main theme:
```
drush then THEME_NAME -y && drush config-set system.theme default THEME_NAME -y
```

- Navigate to the theme directory and install node dependencies:
```
npm install
```

- Start watching for files and start up Storybook:
```
npm run develop
```

- The stories written in Twig needs to be generated to JSON files for Storybook. To do this and watch new changes in the stories, you might need to enter the ddev/lando container. Run
```
watch --color drush storybook:generate-all-stories
```
- If you want only to compile the JSON files without watching, run `drush strorybook:generate-all-stories`.
- TODO: Include this into the theme build and run processes.
