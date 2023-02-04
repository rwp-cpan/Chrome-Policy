use v5.36;
use Object::Pad;

package Chrome::Policy::Chrome;
class Chrome::Policy::Chrome :isa(Chrome::Policy);
use Path::Tiny;
field policy_path = path '/etc/opt/chrome/policies/';
field binary_path = path '/opt/google/chrome/google-chrome';
