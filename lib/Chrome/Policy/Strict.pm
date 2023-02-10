# ABSTRACT: Chrome strict policy role

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

=method set_strict_policy([$name, $type])

Apply strict policy set using Chrome policies below:

  ForceGoogleSafeSearch: true
  ForceYouTubeRestrict: 1
  SafeSitesFilterBehavior: 1

C<$name> is policy file name (F<strict.json> by default)

C<$type> is "managed" by default, but may also be "recommended" as per the policy specification

=cut

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
