// asdf install golang 1.19.2
// asdf global golang 1.19.2
// go get -u github.com/go-sql-driver/mysql

package main

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/go-sql-driver/mysql"
)

// Criando uma interface para um CRUD e select, onde se comunicam com o banco de dados! GO => Database mysql
// Via CLI COMMAND-LINE podemos cadastrar um database, uma tabela e selecionar registros.

func main() {
	db, err := sql.Open("mysql", "root:@tcp(localhost)/go_integration")
	if err != nil {
		log.Fatal(err)
	}

	defer db.Close()

	fmt.Print("Enter database name: ")
	var dbName string
	fmt.Scanln(&dbName)

	var query string = "CREATE DATABASE "
	if _, err := db.Exec(query + dbName); err != nil {
		log.Fatal(err)
	}

	fmt.Println("Database created.")

	db.Exec("USE " + dbName)

	createTable(db)
}

func createTable(db *sql.DB) {
	fmt.Printf("Enter table name:")
	var tableName string
	fmt.Scanln(&tableName)

	var columnDetails string
	fmt.Println("Enter columns and types (e.g., ID INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255)):")
	fmt.Scanln(&columnDetails)

	query := fmt.Sprintf("CREATE TABLE %s (%s)", tableName, columnDetails)
	// Chamada de função em GO é sempre com a primeira letra maiúscula.
	if _, err := db.Exec(query); err != nil {
		log.Fatal("")
	}

	fmt.Println("Table Created.")
}
