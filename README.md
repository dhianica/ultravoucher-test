# UltraVoucher Test

### Questions
```
  1. Logic Test
  2. Query Test
```

* ### 2. Logic Test
  ```javascript
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

    /**
    [
      [ 'cook' ],
      [ 'save', 'aves', 'vase' ],
      [ 'taste', 'state' ],
      [ 'map' ]
    ]
    **/
  ```
   
  #### Run Application
    ```
    git clone https://github.com/dhianica/ultravoucher-test.git
    ```
    
    ```
    cd ultravoucher-test
    ```
    
    ```
    node index.js
    ```

  #### Result
  ![](https://gifyu.com/image/SnIER)
  <a href="https://gifyu.com/image/SnIER"><img src="https://s12.gifyu.com/images/result1.png" alt="result1.png" border="0" /></a>

* ### 3. Query Test
  ```SQL
    CREATE TABLE `parents` (
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
      `name` varchar(11) DEFAULT NULL,
      `parent_id` int(11) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


    INSERT INTO `parents` (`id`, `name`, `parent_id`)
    VALUES
      (1,'Zaki',2),
      (2,'Ilham',NULL),
      (3,'Irwan',2),
      (4,'Arka',3);


    SELECT a.id, a.name, b.name parent_name FROM parents AS a
    LEFT JOIN parents AS b ON a.parent_id = b.id
  ```
  #### RESULT
  
  ![](https://gifyu.com/image/SnIE5)
  <a href="https://gifyu.com/image/SnIE5"><img src="https://s11.gifyu.com/images/result2.png" alt="result2.png" border="0" /></a>
  

