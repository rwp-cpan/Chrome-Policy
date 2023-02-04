# ABSTRACT: Chrome Policy class

use v5.37;
use Object::Pad ':experimental';

package Chrome::Policy;

class Chrome::Policy :does(Chrome::Policy::Strict);

use URI;

field $url :reader = URI -> new ('chrome://policy/');

=pod

Enterprise policies
https://chromium.googlesource.com/chromium/src/+/HEAD/docs/enterprise/policies.md
