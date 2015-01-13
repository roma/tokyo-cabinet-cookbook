name             "tokyo-cabinet"
maintainer       "Rui Bando"
maintainer_email "bando.rui@gmail.com"
license          "MIT"
description      "Installs Tokyo Cabinet and/or sets up"
version          "0.1.0"

recipe "tokyo-cabinet", "Installs and configures Tokyo Cabinet"

%w{ centos ubuntu }.each do |os|
  supports os
end
