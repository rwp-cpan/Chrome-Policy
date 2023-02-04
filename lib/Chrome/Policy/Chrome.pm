use v5.36;
use Object::Pad ':experimental';

package Chrome::Policy::Chrome;
class Chrome::Policy::Chrome :isa(Chrome::Policy);
use Path::Tiny;
field $policy_path :reader = path '/etc/opt/chrome/policies';
field $managed_policy_path :reader { $self -> policy_path -> child( 'managed' ) };
field $binary_path :reader = path '/opt/google/chrome/google-chrome';

1;
