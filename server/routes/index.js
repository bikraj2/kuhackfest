const express = require("express")
const actions= require('../methods/actions')
const router = express.Router()
const buyer= require('../models/user')
const multer = require('multer')
const fs = require('fs')

router.get('/',async (req,res)=>{
    const allData = await buyer.find()
    res.json(allData)
})
  const storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, "uploads");
    },
    filename: (req, file, cb) => {
      cb(null, file.originalname);
    },
  });
  
  const upload = multer({ storage: storage });
router.post('/register',upload.single("testImage"), function(req,res) {
  try{
      console.log(req.body)
      var newUser=buyer({
          firstName:req.body.firstName,
          middleName:req.body.middleName,
          lastName:req.body.lastName,
          email:req.body.email,
          phone:req.body.phone,
          username:req.body.username,
          password:req.body.password,
          image: {
            data: fs.readFileSync("uploads/" + req.file.filename),
            contentType: "image/png",
          },})
      newUser.save((err,newUser)=>{
          if(err){
              res.json({success:false,msg:`failed to save ${err}`})
          }
          else{
              res.json({success:true,msg:"Successfully saved"})
          }
      })
  }
  catch(err){
      res.status(401).json({succes:false,msg:`couldnot be completed due to ${err}`})
  }
})
router.post('/authenticate',actions.authenticate)
router.get('/getinfo',actions.getinfo)
router.get('/image',async (req,res)=>{
    const allData = await buyer.find()
    res.json(allData)
})

module.exports=router