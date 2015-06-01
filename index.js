var cp = require('cp');
var env = process.env;

module.exports = function buildDeps() {
    var i = 0;
    while(true) {
        var n = env['npm_package_config_dependencies_' + i];
        if(n !== undefined) {
            var src = env.npm_package_config_dependencies_base + n;
            var dst = env.npm_package_config_dependencies_dest + n;
            console.log('copy ' + src + ' to ' + dst);
            cp.sync(src, dst);
        } else {
            break;
        }
        i++;
    }
}