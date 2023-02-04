use v5.37;
use Object::Pad;

package Chrome::Policy::Strict;
role Chrome::Policy::Strict;
use experimental qw( builtin );
use builtin qw( true false );
use JSON::PP qw();
use Data::Printer;
use Path::Tiny;

# @formatter:off
field %policy = (
# @formatter:on
  ForceGoogleSafeSearch   => true ,
  ForceYouTubeRestrict    => 1 ,
  SafeSitesFilterBehavior => 1 ,
);

method set_strict_policy ( $name = 'strict.json' , $type = 'managed' ) {
  my $json = JSON::PP -> new -> pretty( true );
  my $policy = $json -> encode( \%policy );
  # p $policy;
  my $file;
  if ( $type eq 'managed' ) {
    $file = path( $self -> managed_policy_path , $name ) -> touchpath -> openw;
  }
  $file -> print( $policy );
  $file -> close;
}
