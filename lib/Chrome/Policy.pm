use v5.36;
use Object::Pad;

package Chrome::Policy;
class Chrome::Policy :does(Chrome::Policy::Strict);
use URI;
field url = URI -> new ('chrome://policy/');

1;

__DATA__

{
  "ForceGoogleSafeSearch": true,
  "ForceYouTubeRestrict": 1,
  "SafeSitesFilterBehavior": 1,
}

=pod

Enterprise policies
https://chromium.googlesource.com/chromium/src/+/HEAD/docs/enterprise/policies.md
