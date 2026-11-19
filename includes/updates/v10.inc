<?php

/**
 * @file
 * Contains varbase_search_update_10###(s) hook updates.
 */

/**
 * Issue #3639429: Install the Search Node module for the content search page.
 *
 * Drupal 11.4 moved the content search page to the Search Node module, so a
 * site installed on Drupal 11.4 had no search page at /search.
 */
function varbase_search_update_100001() {
  $module_handler = \Drupal::moduleHandler();
  if ($module_handler->moduleExists('search') && $module_handler->moduleExists('node') && !$module_handler->moduleExists('search_node')) {
    \Drupal::service('module_installer')->install(['search_node']);
  }
}
