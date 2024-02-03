const fs = require('fs');
const path = require('path');

/**
 * @returns {Array<string>} A list containing link shorteners collected so far.
 * @example
 * const linkShorteners = readHelloFile();
 * // Returns ['bit.ly/', 'ow.ly/']
 */
function listLinkShorterners() {
    try {
        const filePath = path.join(__dirname, 'link-shorteners.txt');
        const linkShortenersFile = fs.readFileSync(filePath, 'utf-8');
        const linkShortenersSet = new Set(linkShortenersFile.split('\n').map(line => line.trim()));
        const linkShortenersList = Array.from(linkShortenersSet);
        return linkShortenersList;
    } catch (error) {
        console.error('Error reading file', error.message);
        return null;
    }
}

module.exports = {
    listLinkShorterners
};