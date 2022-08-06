const mongoose = require('mongoose')
const dbconfig = require('./dbconfig')

const connectDB = async()=>{
    try{
        const conn =  mongoose.connect(dbconfig.database)
        console.log('MongoDb connected  ')
    }
    catch (err){
        console.log(`couldnot connect due to ${err}`)
        process.exit(1)

    }
}

module.exports=connectDB