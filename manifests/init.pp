# == Class: nsswitch
#
# This module manages nsswitch.
#
class nsswitch (
  $config_file                                       = '/etc/nsswitch.conf',
  Variant[Undef, String, Array[String]]  $passwd     = 'compat',
  Variant[Undef, String, Array[String]]  $shadow     = 'compat',
  Variant[Undef, String, Array[String]]  $group      = 'compat',
  Variant[Undef, String, Array[String]]  $gshadow    = 'files',
  Variant[Undef, String, Array[String]]  $sudoers    = undef,
  Variant[Undef, String, Array[String]]  $hosts      = ['files', 'dns'],
  Variant[Undef, String, Array[String]]  $bootparams = undef,
  Variant[Undef, String, Array[String]]  $netmasks   = undef,
  Variant[Undef, String, Array[String]]  $networks   = 'files',
  Variant[Undef, String, Array[String]]  $ethers     = ['db', 'files'],
  Variant[Undef, String, Array[String]]  $protocols  = ['db', 'files'],
  Variant[Undef, String, Array[String]]  $rpc        = ['db', 'files'],
  Variant[Undef, String, Array[String]]  $services   = ['db', 'files'],
  Variant[Undef, String, Array[String]]  $netgroup   = 'nis',
  Variant[Undef, String, Array[String]]  $publickey  = undef,
  Variant[Undef, String, Array[String]]  $automount  = undef,
  Variant[Undef, String, Array[String]]  $aliases    = undef,
  Variant[Undef, String, Array[String]]  $ipnodes    = undef,
  Variant[Undef, String, Array[String]]  $printers   = undef,
  Variant[Undef, String, Array[String]]  $auth_attr  = undef,
  Variant[Undef, String, Array[String]]  $prof_attr  = undef,
  Variant[Undef, String, Array[String]]  $project    = undef,
) {

  file { 'nsswitch_config_file':
    ensure  => file,
    path    => $config_file,
    content => template('nsswitch/nsswitch.conf.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
