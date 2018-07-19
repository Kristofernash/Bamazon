var mysql = require('mysql');
var inquirer = require("inquirer");
require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: null,
    database: "bamazon_DB"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
    readTable();


});
// WHERE id=?", [answers.id]
function readTable() {
    connection.query("SELECT *FROM products", function (err, res) {
        console.table(res)
        promptID(res);
    });
}

function promptID(products) {
    inquirer.prompt([
        {
            type: "input",
            name: "id",
            message: "please type the id of the product you would like to purchase?"
        },

        {
            type: "input",
            name: "qty",
            message: "How many would you like to buy?",
        },
    ]).then(function (answers) {
        console.log("ID: ", answers.id)
        console.log("QTY: ", answers.qty)
        console.log("Answers: ", answers)
        if (answers.id === products) {
            console.log("i found it")
}

            connection.query("SELECT stock_quantity FROM products WHERE items_id="+answers.id, function (err, response) {
           console.log(response) 
           if( inventoryCheck(response,parseInt(answers.qty))){
                var updatedqty=(response[0].stock_quantity)-parseInt(answers.qty)
                updateInventory(answers.id,updatedqty)
                readTable()
                promptID()

            }else{ console.log(response)
                promptID(response);}
                
            });

        })

            function inventoryCheck(res,orderqty){ 
                var inventory=res[0].stock_quantity
                if(inventory >= orderqty){
                    console.log("we in here")
                return(true)
                }
                else{return false}
            }
            function updateInventory(id,newqty){
                var query="UPDATE products SET stock_quantity = "+newqty+" WHERE items_id="+id;
                console.log(query)
                connection.query(query)
            }
}