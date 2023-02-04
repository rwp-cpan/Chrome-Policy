use v5.36;
use Object::Pad;

package Chrome::Policy::Chromium;
class Chrome::Policy::Chromium :isa(Chrome::Policy);
use Path::Tiny;
field policy_path = path '/etc/chromium/policies';
field binary_path = path '/opt/google/chrome/google-chrome';
