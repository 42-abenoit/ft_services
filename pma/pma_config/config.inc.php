<?php
/* vim: set expandtab sw=4 ts=4 sts=4: */
/**
 * phpMyAdmin sample configuration, you can use it as base for
 * manual configuration. For easier setup you can use setup/
 *
 * All directives are explained in documentation in the doc/ folder
 * or at <https://docs.phpmyadmin.net/>.
 *
 * @package PhpMyAdmin
 */

/**
 * This is needed for cookie based authentication to encrypt password in
 * cookie. Needs to be 32 chars long.
 */
$cfg['blowfish_secret'] = ':kBkWM=Ozp[F;zaShmbk]m9f6uqQGh6['; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

/* Authentication type */
$cfg['Servers'][1]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][1]['host'] = 'mysql-svc';
$cfg['Servers'][1]['compress'] = false;
$cfg['Servers'][1]['AllowNoPassword'] = true;

$cfg['Servers'][1]['port'] = '3306';
$cfg['Servers'][1]['user'] = 'myuser';
$cfg['Servers'][1]['password'] = 'mypass';

/* Directories for saving/loading files from server */
$cfg['PmaAbsoluteUri'] = './';
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
