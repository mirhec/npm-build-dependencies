cp = require 'cp'
colors = require 'colors'
env = process.env

module.exports = buildDeps = () ->
    i = 0
    console.log 'build:dependencies :: Copy dependencies ...'
    while true
        n = env['npm_package_config_dependencies_' + i]
        if n?
            src = env.npm_package_config_dependencies_base + n
            dst = env.npm_package_config_dependencies_dest ? 'lib'
            console.log 'build:dependencies ::   ' + n + ' ... ' + 'Ok.'.green
            cp.sync src, dst
        else
            break
        i++
    console.log 'build:dependencies :: ' + 'Ok.'.green
