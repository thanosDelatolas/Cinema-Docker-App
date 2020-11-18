<?php

    /**
     * port 27018 is for local connection, hence 27017 is used here
     */
    $manager = new MongoDB\Driver\Manager("mongodb://root:root_pass@mongo_db_data_storage:27017");


?>