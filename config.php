<?php
/**
 * RockMongo configuration
 *
 * Defining default options and server configuration
 * @package rockmongo
 */

$MONGO = array();
$MONGO["features"]["log_query"] = "on";//log queries
$MONGO["features"]["theme"] = "default";//theme
$MONGO["features"]["plugins"] = "on";//plugins

$i = 0;

$MONGO["servers"][$i]["mongo_name"] = "docker";
$MONGO["servers"][$i]["mongo_host"] = getenv('MONGODB_1_PORT_27017_TCP_ADDR');
$MONGO["servers"][$i]["mongo_port"] = getenv('MONGODB_1_PORT_27017_TCP_PORT');
$MONGO["servers"][$i]["mongo_auth"] = false;
$MONGO["servers"][$i]["control_auth"] = false;
$i ++;
