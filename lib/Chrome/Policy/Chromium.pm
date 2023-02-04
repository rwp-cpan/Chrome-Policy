# ABSTRACT: Chromium Policy class

use v5.37;
use Object::Pad ':experimental';

package Chrome::Policy::Chromium;

class Chrome::Policy::Chromium :isa(Chrome::Policy);

use Path::Tiny;

field $policy_path :reader = path '/etc/chromium-browser/policies';
# https://askubuntu.com/questions/1324149/how-to-configure-policies-preferences-for-chromium
# https://git.launchpad.net/~chromium-team/chromium-browser/+git/snap-from-source/commit/?id=6f2b87da50bce971f4baadae348331e1bd024cb8

field $managed_policy_path :reader { $self -> policy_path -> child( 'managed' ) };

field $binary_path :reader = path '/usr/bin/chromium-browser';
