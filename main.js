const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Mail',
  protocol: 'icloud-mail',
  icloudUrl: 'https://www.icloud.com/mail',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
