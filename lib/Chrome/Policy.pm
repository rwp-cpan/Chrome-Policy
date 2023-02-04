use v5.36;
use Object::Pad ':experimental';

package Chrome::Policy;
class Chrome::Policy :does(Chrome::Policy::Strict);
use URI;
# field url = URI -> new ('chrome://policy/');

=pod

Enterprise policies
https://chromium.googlesource.com/chromium/src/+/HEAD/docs/enterprise/policies.md
