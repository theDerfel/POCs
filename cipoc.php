require_once(BASEPATH.'database/DB_driver'.EXT);

  if ( ! isset($active_record) OR $active_record == TRUE)
  {
    require_once(BASEPATH.'database/DB_active_rec'.EXT);

    if ( ! class_exists('CI_DB'))
    {
      eval('class CI_DB extends CI_DB_active_record { }');
    }
  }
  else
  {
    if ( ! class_exists('CI_DB'))
    {
      eval('class CI_DB extends CI_DB_driver { }');
    }
  }

require_once(BASEPATH.'database/drivers/'.$params['dbdriver'].'/'.$params['dbdriver'].'_driver'.EXT);

  // Instantiate the DB adapter
  $driver = 'CI_DB_'.$params['dbdriver'].'_driver';
  $DB =& instantiate_class(new $driver($params));

  if ($DB->autoinit == TRUE)
  {
    $DB->initialize();
  }

  return $DB;
}
