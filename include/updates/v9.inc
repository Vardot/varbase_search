<?php

/**
 * @file
 * Contains varbase_search_update_9###(s) hook updates.
 */

/**
 * Issue #3272294: Switch to use the Module Installer Factory.
 *
 * In the Varbase Search module.
 */
function varbase_search_update_90001() {
  // Set the weight of the module after installation of list of modules.
  // To make sure that any hook or event subscriber worker
  // after all used modules.
  ModuleInstallerFactory::setModuleWeightAfterInstallation('varbase_search');
}
