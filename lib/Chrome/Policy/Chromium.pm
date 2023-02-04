# ABSTRACT: Chromium Policy class

use v5.36;
use Object::Pad ':experimental';

package Chrome::Policy::Chromium;
class Chrome::Policy::Chromium :isa(Chrome::Policy);
use Path::Tiny;
field $policy_path :reader = path '/etc/chromium/policies';
field $managed_policy_path :reader { $self -> policy_path -> child( 'managed' ) };
field $binary_path :reader = path '/opt/google/chrome/google-chrome';

1;
