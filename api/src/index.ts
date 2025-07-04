import { connectDb } from "./database"



export async function databaseConnectionFunction() {
    return connectDb();
}
