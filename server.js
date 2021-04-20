import express from 'express'
import cors from 'cors'
import mongoose from 'mongoose'
const app = express()
const port = process.env.PORT|| 80
const uri = "mongodb+srv://jacob_prince_slu:closet1@closet.mzgmn.mongodb.net/Clothes?retryWrites=true&w=majority"
mongoose.connect(uri, { useNewUrlParser: true, useCreateIndex: true, useUnifiedTopology: true }, err => {
    if (err) console.log(err)
    else console.log('Successfully connected to database')
})
//create new user function
async function newUser(req,res, next) {
    console.log(req)
    const {id}
    const user = new db.User({
        id
    })
    await user.save()
    res.status(200).json({
        status: 'success',
        message: `Created new user`
    })
}
async function newBelt(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const belt = new db.Belts({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await belt.save()
    res.status(200).json({
        status: 'success',
        message: `Created new belt.`
    })
}
async function newBodyJewelry(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const bodyJewelry = new db.BodyJewelry({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await bodyJewelry.save()
    res.status(200).json({
        status: 'success',
        message: `Created new body jewelry.`
    })
}
async function newBra(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const bra = new db.Bras({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await bra.save()
    res.status(200).json({
        status: 'success',
        message: `Created new bra.`
    })
}
async function newEarrings(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const earring = new db.Earrings({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await earring.save()
    res.status(200).json({
        status: 'success',
        message: `Created new earrings.`
    })
}
async function newFacemask(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const facemask = new db.Facemasks({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await facemask.save()
    res.status(200).json({
        status: 'success',
        message: `Created new facemask.`
    })
}
async function newHat(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const hat = new db.Hats({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await hat.save()
    res.status(200).json({
        status: 'success',
        message: `Created new hat.`
    })
}
async function newJacket(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const jacket = new db.Jackets({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await jacket.save()
    res.status(200).json({
        status: 'success',
        message: `Created new jacket.`
    })
}
async function newNecklace(req, res, next) {
    console.log(req)
    const {color, summer, fall, winter, spring} = req.body
    const necklace = new db.Necklaces({
        color,
        summer,
        fall,
        winter,
        spring
    })
    await necklace.save()
    res.status(200).json({
        status: 'success',
        message: `Created new necklace.`
    })
}
