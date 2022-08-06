var buyer = require('../models/user')
var jwt= require('jwt-simple')

var config = require('../config/dbconfig')
const multer = require('multer')
const fs = require("fs");
//storage\

var functions = {
    authenticate:function(req,res){
        console.log(req.body)
        buyer.findOne({
            username:req.body.username
        },function(err,user){
            if(err){
                throw err
            }
            if(!user){
                res.status(401).json({success:false,msg:"Authentication failed .User is not available"})
            }
            else{
                user.comparePassword(req.body.password,function(err,isMatch){
                    if(isMatch  && !err){
                        var token = jwt.encode(user,config.secret)
                        res.json({success:true,token:token})
                    }
                    else{
                        return res.status(403).send({success:false,msg:"Please enter the right password"})
                    }
                })
            }
        })
    },
    getinfo:function (req,res){
          if(req.headers.authorization && req.headers.authorization.split(' ')[0]==="Bearer"){
            var token = req.headers.authorization.split(' ')[1]
            var decodedtoken = jwt.decode(token,config.secret)
            return res.json({success:true,msg:'Hello'+decodedtoken.firstName})
          }
          else{
            return res.json({success:false,msg:"No Headers"})
          }
    }
}

module.exports=functions