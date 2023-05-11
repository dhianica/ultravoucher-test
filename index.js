let datas = ['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map'];
let processData = {};
let result = [];

for (let data of datas) {
    let sorting = data.split("").sort().join("");
    if (processData[sorting]) {
        processData[sorting].push(data);
    } else {
        processData[sorting] = [data];
        result.push(processData[sorting])
    }
}

console.log(result)