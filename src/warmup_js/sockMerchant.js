// https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

const sockMerchant = (length, arr) => {
    const groups = getGroups(arr);
    const matches = getMatches(arr, groups);
    return getPairs(matches);
};

const getPairs = matches => {
    let pairs = 0;
    // noinspection JSUnusedLocalSymbols
    for (const [key, match] of matches) {
        const pair = Math.floor(match / 2);
        if (pair > 0) {
            pairs += pair;
        }
    }
    return pairs;
};

const getGroups = arr => {
    const groups = new Map();
    arr.forEach(item => {
        if (!groups.get(item)) {
            groups.set(item, item);
        }
    });
    return groups;
};

const getMatches = (arr, groups) => {
    const matches = new Map();
    arr.forEach(item => {
        if (!matches.get(item)){
            matches.set(item, 0);
        }
        if (groups.get(item)) {
            matches.set(item, matches.get(item) + 1);
        }
    });
    return matches;
};

module.exports = sockMerchant;

