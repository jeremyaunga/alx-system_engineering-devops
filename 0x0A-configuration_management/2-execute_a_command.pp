# kill process killmenow

exec { 'kill_killmenow_process':
  command     => '/usr/bin/pkill killmenow',
  refreshonly => true,
  subscribe   => Exec['check_killmenow_process'],
}

exec { 'check_killmenow_process':
  command     => '/usr/bin/pgrep killmenow',
  returns     => [0, 1],
  logoutput   => false,
  notify      => Exec['kill_killmenow_process'],
}

