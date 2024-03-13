const slugify = require('slugify');

const options = {
    replacement: '-',  
    remove: undefined, // remove characters that match regex, defaults to `undefined`
    lower: true,      
    strict: true,     // strip special characters except replacement, defaults to `false`
    locale: 'tr',      
    trim: true         
}

module.exports = function slugField(str) {
    return slugify(str, options);
}