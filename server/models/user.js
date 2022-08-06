var mongoose = require('mongoose')

var Schema = mongoose.Schema
var bcrypt = require('bcrypt')

var buyerSchema = new Schema({
      fullName:{
        type:String,
        require:true
      },
      email:{
        type:String,
        require:true,
        uniqure:true,
      },
      phone:{
        type:Number,
        require:true
      },
      username:{
        type:String,
        require:true,
        unique:true,
      },
      password:{
        type:String,
        require:true
      },
      created_date:{
        type:Date,
        default:Date.now
      },

})
buyerSchema.pre('save',function(next){
    var user = this
    if(this.isModified("password")||this.isNew){
        bcrypt.genSalt(10,(err,salt)=>{
            if(err){
                return next(err)
            }
            bcrypt.hash(user.password,salt,(err,hash)=>{
                if(err){
                    return next(err)
                }
                user.password=hash;
                next()
            })
        })
    }
})
buyerSchema.methods.comparePassword = function (passw,cb){
    bcrypt.compare(passw,this.password,(err,isMatch)=>{
        if(err){
            return cb(err)
        }
        cb(null,isMatch)
    })
}
module.exports = mongoose.model("buyer",buyerSchema);