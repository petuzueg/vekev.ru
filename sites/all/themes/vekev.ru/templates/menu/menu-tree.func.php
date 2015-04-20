<?php
/**
 * @file
 * menu-tree.func.php
 */

/**
 * Bootstrap theme wrapper function for the secondary menu links.
 */
function vekev_menu_tree__secondary(&$variables) {
  return '<ul class="menu nav navbar-nav secondary pull-right">' . $variables['tree'] . '</ul>';
}
