var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "mon0monT",
    database: "bamazon"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    // run the start function after the connection is made to prompt the user
    displayItems();
});
// go through each SQL item in a for loop and show the product id, name, and price
function displayItems() {
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].price);
        }
        console.log("-----------------------------------");
    whatToBuy()
    });
}
// function which prompts the user for what they would like to buy
function whatToBuy() {
    inquirer
        .prompt([
            {
                name: "item",
                type: "list",
                message: "What would you like to buy?",
                choices:
                    [
                        '1 | bananas',
                        '2 | vaseline',
                        '3 | tennis balls',
                        '4 | chair',
                        '5 | socks',
                        '6 | football',
                        '7 | apple',
                        '8 | tylenol',
                        '9 | shirts',
                        '10 | pants'
                    ]
            },
            {
                // input prompt to ask how many would like to be bought
                name: "quantity",
                type: "input",
                message: "How many would you like to buy?",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            }
        ])};
        // get the answer of the "quantity" to check if there is enough in inventory