package main

import (
	"fmt"
	"go-graph/db"
	"go-graph/graph/model"
)

func main() {
	dbConn := db.NewDB()
	defer fmt.Println("Successfully Migrated")
	defer db.CloseDB(dbConn)
	dbConn.AutoMigrate(&model.Todo{}, &model.User{})
}
