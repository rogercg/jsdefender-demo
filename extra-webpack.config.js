const { JSDefenderWebpackPlugin } = require('@preemptive/jsdefender-webpack-plugin');

module.exports = {
    plugins: [
        new JSDefenderWebpackPlugin({
            configurationFile: 'jsdefender.config.json', // Optional path to the configuration file, if any, it defaults to `jsdefender.config.json`
            excludeChunks: [ 'vendor', 'scripts', 'common', 'runtime', 'polyfills', 'polyfills-es5', 'styles', 'inline' ]
        })
    ],
};
