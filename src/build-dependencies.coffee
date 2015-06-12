cp = require 'cp'
colors = require 'colors'
path = require 'path'
env = process.env

module.exports = buildDeps = () ->
    i = 0
    console.log 'build:dependencies :: Copy dependencies ...'
    while true
        n = env['npm_package_config_dependencies_' + i]
        if n?
            src = path.join env.npm_package_config_dependencies_base, n
            dst = path.join env.npm_package_config_dependencies_dest ? 'lib', n
            console.log 'build:dependencies ::   ' + n + ' ... ' + 'Ok.'.green
            cp.sync src, dst
        else
            break
        i++
    console.log 'build:dependencies :: ' + 'Ok.'.green
